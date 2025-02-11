import 'package:flutter/material.dart';

import 'cached_network_image.dart';

class RetryableImage extends StatefulWidget {
  final String imageUrl;
  final double width;
  final BoxFit fit;

  const RetryableImage({
    required this.imageUrl,
    this.width = double.infinity,
    this.fit = BoxFit.fitHeight,
    super.key,
  });

  @override
  State<RetryableImage> createState() => _RetryableImageState();
}

class _RetryableImageState extends State<RetryableImage> {
  int retryCount = 0;

  void _retry() {
    setState(() {
      retryCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SCachedNetworkImage(
      imageUrl: widget.imageUrl,
      width: widget.width,
      key: ValueKey<int>(retryCount), // Force widget rebuild on retry
      errorWidget: GestureDetector(
        onTap: _retry, // Retry loading the image
        child: Container(
          width: widget.width,
          color: Colors.grey[300],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.refresh, size: 40.0, color: Colors.blue),
              const SizedBox(height: 8.0),
              const Text('Tap to Retry', style: TextStyle(color: Colors.blue)),
            ],
          ),
        ),
      ),
    );
  }
}
