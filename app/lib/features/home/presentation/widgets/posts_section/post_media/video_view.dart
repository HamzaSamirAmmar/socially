import 'package:flutter/material.dart';

/// A widget that displays a video from a URL.
///
/// TODO: Implement actual video player functionality.
class PostVideoView extends StatelessWidget {
  final String url;

  const PostVideoView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Icon(Icons.play_circle_outline, size: 48));
  }
}
