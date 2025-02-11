// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:socially/features/home/presentation/widgets/posts_section/stack_media_view.dart';

import '../../../domain/entities/post_media.dart';
import '../../../domain/enums/media_style.dart';
import 'carousel_media_view.dart';

/// A widget that displays post media content.
///
/// Supports both images and videos, using [MediaStyle] to determine
/// the appropriate display widget.
class PostMediaView extends StatelessWidget {
  final List<PostMedia> media;
  final MediaStyle style;

  const PostMediaView({super.key, required this.media, required this.style});

  @override
  Widget build(BuildContext context) {
    return style == MediaStyle.carousel
        ? CarouselMediaView(media: media)
        : StackMediaView(mediaUrls: media.map((e) => e.url).toList());
  }
}
