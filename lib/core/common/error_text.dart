import 'package:flutter/material.dart';

/// Widget for displaying an error message.
class ErrorText extends StatelessWidget {
  /// The error message to display.
  final String error;

  /// Constructor for ErrorText widget.
  const ErrorText({
    Key? key,
    required this.error,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error),
    );
  }
}
