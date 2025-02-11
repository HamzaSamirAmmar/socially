import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class StackMediaView extends StatelessWidget {
  final List<String> mediaUrls;

  const StackMediaView({super.key, required this.mediaUrls});

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
