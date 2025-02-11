// import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/entities/post_media.dart';
import '../../../domain/enums/media_style.dart';
import '../../../domain/enums/media_type.dart';
import 'post_media/image_view.dart';
import 'post_media/video_view.dart';

/// A widget that displays post media content.
///
/// Supports both images and videos, using [MediaType] to determine
/// the appropriate display widget.
class PostMediaView extends StatefulWidget {
  final List<PostMedia> media;
  final MediaStyle style;

  const PostMediaView({super.key, required this.media, required this.style});

  @override
  State<PostMediaView> createState() => _PostMediaViewState();
}

class _PostMediaViewState extends State<PostMediaView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return widget.style == MediaStyle.carousel
        ? Stack(
          children: [
            CarouselSlider.builder(
              itemCount: widget.media.length,
              itemBuilder: (context, itemIndex, pageViewIndex) {
                final currentMedia = widget.media[itemIndex];
                if (currentMedia.type == MediaType.image) {
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
                }
                return PostVideoView(url: currentMedia.url);
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
            if (widget.media.isNotEmpty &&
                widget.media[_currentIndex].type == MediaType.video)
              const Positioned(
                right: 0,
                left: 0,
                child: Icon(Icons.play_circle_outline, color: Colors.white),
              ),
          ],
        )
        : PostMediaWidget(
          mediaUrls:
              widget.media.map((e) => e.url).toList() +
              [
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3fGg33KuieCuoDec57yDDJCiFcNmSLMBSws',
              ] +
              [
                'https://lmqcditytujkztctnxli.supabase.co/storage/v1/object/public/socially//Screenshot%202025-02-09%20at%2018.23.50.png',
              ],
        );
  }
}

class PostMediaWidget extends StatelessWidget {
  final List<String> mediaUrls;

  const PostMediaWidget({Key? key, required this.mediaUrls}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1.2, child: _buildMediaLayout(context));
  }

  Widget _buildMediaLayout(BuildContext context) {
    if (mediaUrls.isEmpty) return SizedBox.shrink();

    if (mediaUrls.length == 1) {
      return _buildImage(mediaUrls[0]);
    } else if (mediaUrls.length == 2) {
      return Row(
        children: [
          Expanded(child: _buildImage(mediaUrls[0])),
          SizedBox(width: 5.w),
          Expanded(child: _buildImage(mediaUrls[1])),
        ],
      );
    } else if (mediaUrls.length == 3) {
      return Row(
        children: [
          Expanded(flex: 2, child: _buildImage(mediaUrls[0])),
          SizedBox(width: 5.w),
          Expanded(
            child: Column(
              children: [
                Expanded(child: _buildImage(mediaUrls[1])),
                SizedBox(height: 5.h),
                Expanded(child: _buildImage(mediaUrls[2])),
              ],
            ),
          ),
        ],
      );
    } else {
      return Stack(
        children: [
          Row(
            children: [
              Expanded(flex: 2, child: _buildImage(mediaUrls[0])),
              SizedBox(width: 5.w),
              Expanded(
                child: Column(
                  children: [
                    Expanded(child: _buildImage(mediaUrls[1])),
                    SizedBox(height: 5.h),
                    Expanded(child: _buildImage(mediaUrls[2])),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            right: 8,
            bottom: 8,
            child: _buildOverlayCount(mediaUrls.length - 3),
          ),
        ],
      );
    }
  }

  Widget _buildImage(String url) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: CachedNetworkImageProvider(url),
          fit: BoxFit.cover,
          onError: (exception, stackTrace) {},
        ),
      ),
      child: CachedNetworkImage(
        imageUrl: url,
        fadeInDuration: Duration(milliseconds: 500),
        imageBuilder: (context, imageProvider) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            ),
          );
        },
        placeholder:
            (context, url) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[300],
              ),
              child: Center(child: CircularProgressIndicator()),
            ),
        errorWidget:
            (context, url, error) => GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[300],
                ),
                child: Center(
                  child: Icon(Icons.refresh, color: Colors.black54, size: 30),
                ),
              ),
            ),
      ),
    );
  }

  Widget _buildOverlayCount(int count) {
    return count > 0
        ? Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "+$count",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
        : SizedBox.shrink();
  }
}
