import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socially/core/constants/letter_spacing.dart';
import 'package:socially/core/presentation/avatar_network_image.dart';

import '../../../../../core/utils/date_time_formatter.dart';
import '../../../domain/entities/post.dart';

/// A widget that displays the header of a post.
///
/// Shows the user's avatar, name, and post timestamp.
class PostHeader extends StatelessWidget {
  final Post post;

  const PostHeader({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 25.w,
            height: 25.w,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color: Colors.grey[300],
            ),
            child: AvatarNetworkImage(
              imageUrl: post.user.avatarUrl ?? '',
              width: 25.w,
              height: 25.w,
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.user.name,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: 16.sp,
                    letterSpacing:kLetterSpacing.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
              ],
            ),
          ),
          Text(
            DateTimeFormatter.timeAgo(post.createdAt),
             style: TextStyle(
                    color: Theme.of(context).colorScheme.primary.withOpacity(0.6),
                    fontSize: 14.sp,
                    letterSpacing: kLetterSpacing.sp,
                    fontWeight: FontWeight.w600,
                  ),
          ),
        ],
      ),
    );
  }
}
