import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socially/core/constants/letter_spacing.dart';
import 'package:socially_ui_components/components/assets/socially_asset.dart';

class PostTags extends StatefulWidget {
  final List<String> tags;
  final int maxVisibleTags;
  final int maxTagLength;
  final int clampIndex;

  const PostTags({
    super.key,
    required this.tags,
    this.maxVisibleTags = 3,
    this.clampIndex = 3,
    this.maxTagLength = 8,
  });

  @override
  State<PostTags> createState() => _PostTagsState();
}

class _PostTagsState extends State<PostTags> {
  @override
  Widget build(BuildContext context) {
    final visibleTags = widget.tags.take(widget.maxVisibleTags).toList();
    final remainingCount = widget.tags.length - widget.maxVisibleTags;

    String truncateTag(String tag) {
      return tag.length > widget.maxTagLength
          ? '${tag.substring(0, widget.maxTagLength)}...'
          : tag;
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ...visibleTags.map(
          (tag) => Padding(
            padding: EdgeInsets.only(right: 2.w),
            child: Chip(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
              ),
              backgroundColor: Colors.grey[200],
              label: Text(
                truncateTag(tag),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  letterSpacing: kLetterSpacing.sp,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              avatar: SAsset.tag,
            ),
          ),
        ),

        if (remainingCount > 0)
          Expanded(
            child: SizedBox(
              height: 50.h,
              child: Stack(
                children: List.generate(
                  remainingCount.clamp(1, widget.clampIndex),
                  (index) => Positioned(
                    left: index * 8.0,
                    bottom: 0,
                    top: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 14,
                        child:
                            index == widget.clampIndex - 1 ||
                                    remainingCount == index + 1
                                ? Text(
                                  "+$remainingCount",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                                : null,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
