import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

/// Show a SnackBar with the provided text.
void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(text),
      ),
    );
}

/// Pick an image file and return the result.
Future<FilePickerResult?> pickImage() async {
  final image = await FilePicker.platform.pickFiles(type: FileType.image);
  return image;
}
