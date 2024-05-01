import 'package:flutter/material.dart'; //Importing the 'material dart'f ile from the Flutter package.
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gazeta/core/common/error_text.dart'; // Importing the error text widget for displaying error messages.
import 'package:gazeta/core/common/loader.dart'; // Importing the loader widget for displaying loading indicators.
import 'package:gazeta/core/common/post_card.dart'; // Importing the PostCard widget for displaying individual posts.
import 'package:gazeta/features/auth/controller/auth_controller.dart'; // Importing the authentication controller for user authentication status.
import 'package:gazeta/features/community/controller/community_controller.dart'; // Importing the community controller for fetching user communities.
import 'package:gazeta/features/post/controller/post_controller.dart'; // Importing the post controller for fetching posts.

// Defining the FeedScreen widget as a ConsumerWidget to access and watch providers.
class FeedScreen extends ConsumerWidget {
  const FeedScreen({super.key}); // Constructor for the FeedScreen widget.

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(
        userProvider)!; // Watching the user provider to get the user's authentication status.
    final isGuest = !user
        .isAuthenticated; // Determining if the user is a guest or authenticated.

    // Conditional rendering based on user authentication status.
    if (!isGuest) {
      // Rendering for authenticated users.
      return ref.watch(userCommunitiesProvider).when(
            data: (communities) =>
                ref.watch(userPostsProvider(communities)).when(
                      data: (data) {
                        // Rendering posts when data is available.
                        return ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (BuildContext context, int index) {
                            final post = data[index];
                            return PostCard(
                                post:
                                    post); // Displaying individual posts using the PostCard widget.
                          },
                        );
                      },
                      error: (error, stackTrace) {
                        // Rendering error message if data retrieval fails.
                        return ErrorText(
                          error: error.toString(),
                        );
                      },
                      loading: () =>
                          const Loader(), // Rendering loading indicator while fetching data.
                    ),
            error: (error, stackTrace) => ErrorText(
              error: error.toString(),
            ),
            loading: () => const Loader(),
          );
    } else {
      // Rendering for guests.
      return ref.watch(userCommunitiesProvider).when(
            data: (communities) => ref.watch(guestPostsProvider).when(
                  data: (data) {
                    // Rendering guest posts when data is available.
                    return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        final post = data[index];
                        return PostCard(
                            post:
                                post); // Displaying individual guest posts using the PostCard widget.
                      },
                    );
                  },
                  error: (error, stackTrace) {
                    // Rendering error message if data retrieval fails.
                    return ErrorText(
                      error: error.toString(),
                    );
                  },
                  loading: () =>
                      const Loader(), // Rendering loading indicator while fetching data.
                ),
            error: (error, stackTrace) => ErrorText(
              error: error.toString(),
            ),
            loading: () => const Loader(),
          );
    }
  }
}
