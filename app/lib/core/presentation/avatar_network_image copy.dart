import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:socially/core/presentation/cached_network_image.dart';

class AvatarNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final Widget? placeholder;
  final bool errorWidget;

  const AvatarNetworkImage({
    super.key,
    required this.imageUrl,
    required this.width,
    required this.height,
    this.placeholder,
    this.errorWidget = true,
  });

  @override
  Widget build(BuildContext context) {
    return SCachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      showErrorWidget: false,
      placeholder: Icon(
        Icons.person,
        size: height * 0.6,
        color: Colors.grey[600],
      ),
    );
  }
}
