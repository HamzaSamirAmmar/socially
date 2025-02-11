import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final Widget? placeholder;
  final Widget? errorWidget;
  final bool showErrorWidget;

  const SCachedNetworkImage({
    super.key,
    required this.imageUrl,
     this.width,
     this.height,
    this.placeholder,
    this.errorWidget,
    this.showErrorWidget = true,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: BoxFit.cover,
      placeholder:
          (context, url) =>
              placeholder ??
              Container(
                width: width,
                height: height,
                color: Colors.grey[300],
                child: Center(
                  child: CircularProgressIndicator(strokeWidth: 2.0),
                ),
              ),
      errorWidget:
          showErrorWidget
              ? (context, url, error) =>
                  errorWidget ??
                  Container(
                    width: width,
                    height: height,
                    color: Colors.grey[300],
                    child: Icon(
                      Icons.broken_image,
                      color: Colors.red,
                    ),
                  )
              : null,
      fadeInDuration: const Duration(milliseconds: 300),
      fadeOutDuration: const Duration(milliseconds: 200),
    );
  }
}
