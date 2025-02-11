import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socially/features/home/presentation/widgets/posts_section/mentioned_text.dart';
import 'package:socially/features/home/presentation/widgets/posts_section/post_tags.dart';

import '../../../domain/entities/post.dart';
import 'post_actions.dart';
import 'post_header.dart';
import 'post_media_view.dart';

/// A widget that displays a single post item.
///
/// This widget composes several smaller widgets to create a complete post view:
/// - [PostHeader]: Displays user info and post metadata
/// - [PostMediaView]: Shows post media (images/videos)
/// - [PostActions]: Shows like, comment, and share buttons
class PostListItem extends StatelessWidget {
  final Post post;

  const PostListItem({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( vertical: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withAlpha(25),
            blurRadius: 9.r,
            offset: Offset(2.w, 3.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostHeader(post: post),
          if (post.postmedia.isNotEmpty) ...[
            PostMediaView(media: post.postmedia, style: post.style,),
            SizedBox(height: 8.h),
          ],
          if (post.content.isNotEmpty) MentionedText(content: post.content),
          if (post.tags.isNotEmpty) PostTags(tags: post.tags),
          PostActions(
            hasTags: true, // post.tags.isNotEmpty,
            likesCount: post.likes.length,
            commentsCount: post.comments.length,
            onLike: () {}, // TODO: Implement like functionality
            onComment: () {}, // TODO: Implement comment functionality
            onShare: () {}, // TODO: Implement share functionality
          ),
        ],
      ),
    );
  }
}
