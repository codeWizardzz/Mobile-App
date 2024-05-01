# GazetaHub

GazetaHub is a Flutter project aimed at providing a modern platform for news consumption, inspired by the concept of digitalizing newspapers. This project includes a range of features designed to enhance the user experience and facilitate community engagement.
[![demo](https://img.youtube.com/vi/iZTNk9p9-fY?si/0.jpg)](https://www.youtube.com/watch?v=iZTNk9p9-fY?si)
## Features

- Authentication: Users can sign in with Google or as a guest.
- Splash Screen: Engage users right from the start with a captivating splash screen.
- Onboarding Screen: Introduce users to the platform's features and functionalities with an interactive onboarding experience.
- Community Management: Create and join communities.
- Community Profile: View community details, including avatar, banner, and member count.
- Edit Community: Modify community description and avatar.
- Post Creation: Users can create posts with various content types, including links, photos, and text.
- Post Interaction: Upvote, downvote, comment, and award posts.
- Karma System: Users' karma is updated based on their interactions.
- Moderation: Add and remove moderators, moderator functionality includes removing posts.
- User Profile: Users can view their own profile, including avatar and banner.
- Theme Switch: Toggle between light and dark themes.
- Responsive UI: The UI is responsive and adjusts to different screen sizes.
- Latest Posts: For guest users, the app displays the latest posts instead of a home screen.

## Tech Stack

- Server: Firebase Auth, Firebase Storage, Firebase Firestore
- Client: Flutter, Riverpod 2.0, Routemaster

## Getting Started

This project is a starting point for a Flutter application. To get started, follow these steps:

1. Clone this repository.
2. Create a Firebase project and configure authentication (Google Sign-In, Guest Sign-In).
3. Set up Firestore rules.
4. Create Android, iOS, and web apps in the Firebase console.
5. Use the FlutterFire CLI to add the Firebase project to the app.
6. Run `flutter pub get` to install dependencies.
7. Run `flutter run` to launch the app on a simulator or device.
8. To run the web version with the best output, use `flutter run -d chrome --web-renderer html`.

## Resources

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
- [Online documentation](https://docs.flutter.dev/): Tutorials, samples, guidance on mobile development, and a full API reference.

Feel free to contribute to this project and help advance the digital newspaper experience further!
