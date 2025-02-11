import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/entities/post_media.dart';

class CarouselMediaView extends StatefulWidget {
  final List<PostMedia> media;
  const CarouselMediaView({super.key, required this.media});

  @override
  State<CarouselMediaView> createState() => _CarouselMediaViewState();
}

class _CarouselMediaViewState extends State<CarouselMediaView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: widget.media.length,
          itemBuilder: (context, itemIndex, pageViewIndex) {
            final currentMedia = widget.media[itemIndex];
            return AspectRatio(
              aspectRatio: 16 / 9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(currentMedia.url),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            );
          },

          options: CarouselOptions(
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            autoPlay: false,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        if (widget.media.length > 1)
          Positioned(
            bottom: 5.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  widget.media.asMap().entries.map((entry) {
                    return Container(
                      width: 5.w,
                      height: 5.w,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(
                          entry.key == _currentIndex ? 0.9 : 0.4,
                        ),
                      ),
                    );
                  }).toList(),
            ),
          ),
      ],
    );
  }
}
