import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socially/core/constants/letter_spacing.dart';
import 'package:socially_ui_components/components/assets/socially_asset.dart';

/// A widget that displays post action buttons (like, comment, share).
///
/// Shows the number of likes and comments, and provides callback functions
/// for each action button.
class PostActions extends StatelessWidget {
  final bool hasTags;
  final int likesCount;
  final int commentsCount;
  final VoidCallback onLike;
  final VoidCallback onComment;
  final VoidCallback onShare;

  const PostActions({
    super.key,
    required this.likesCount,
    required this.hasTags,
    required this.commentsCount,
    required this.onLike,
    required this.onComment,
    required this.onShare,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(!hasTags)
        Padding(
          padding: EdgeInsets.only(top: 8.h, bottom: 15.h),
          child: Divider(
            height: 1,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.6),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _ActionButton(
                      icon: SAsset.favorite,
                      count: likesCount,
                      onPressed: onLike,
                    ),
                    _ActionButton(
                      icon: SAsset.comment,
                      count: commentsCount,
                      onPressed: onComment,
                    ),
                  ],
                ),
              ),
              SAsset.save,
            ],
          ),
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final Widget icon;
  final int count;
  final VoidCallback onPressed;

  const _ActionButton({
    required this.icon,
    required this.count,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          SizedBox(width: 6.w),
          Text(
            count.toString(),
            style: TextStyle(
              letterSpacing: kLetterSpacing.sp,
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
              color: Theme.of(context).colorScheme.onSecondary.withOpacity(0.6),
            ),
          ),
          SizedBox(width: 9.w),
        ],
      ),
    );
  }
}
