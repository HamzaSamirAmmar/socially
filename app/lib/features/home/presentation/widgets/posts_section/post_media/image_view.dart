import 'package:flutter/material.dart';
import 'package:socially/core/presentation/retryable_cached_image.dart';

/// A widget that displays an image from a URL.
///
/// Handles loading states and errors gracefully.
class PostImageView extends StatelessWidget {
  final String url;

  const PostImageView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return RetryableImage(imageUrl: url,width: double.infinity,);
  }
}
