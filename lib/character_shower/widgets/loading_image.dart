import 'package:flutter/material.dart';
import 'package:show_characters_viewer/flavors.dart';

// A widget to display an image with a loading indicator and error handling.
class LoadingImage extends StatelessWidget {
  // Constructor to accept the image URL.
  const LoadingImage({
    required this.url,
    super.key,
  });

  // URL of the image to be displayed.
  final String url;

  @override
  Widget build(BuildContext context) {
    // If the provided URL is empty, use the placeholder URL.
    final imageUrl = url.isNotEmpty ? url : F.placeholderUrl;

    return Image.network(
      imageUrl,
      fit: BoxFit.cover, // Make the image fill parent widget.
      width: double.infinity,
      height: double.infinity,
      // Error builder to handle image loading failures.
      errorBuilder: (c, err, stack) {
        return const Center(child: Text('error')); // Display an error message.
      },
      // Frame builder to handle image frames.
      frameBuilder: (c, image, frame, sync) {
        // Display a loading indicator until the image is loaded.
        if (!sync && frame == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return image;
      },
    );
  }
}
