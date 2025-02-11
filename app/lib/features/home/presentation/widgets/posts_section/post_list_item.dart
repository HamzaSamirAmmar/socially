import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/entities/post.dart';
import 'mentioned_text.dart';
import 'post_actions.dart';
import 'post_header.dart';
import 'post_media_view.dart';
import 'post_tags.dart';

class PostListItem extends StatelessWidget {
  final Post post;

  const PostListItem({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.h),
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
          if (post.postmedia.isNotEmpty) _mediaView(post),
          if (post.content.isNotEmpty) MentionedText(content: post.content),
          if (post.tags.isNotEmpty) PostTags(tags: post.tags),
          _postActions(post),
        ],
      ),
    );
  }

  // Return the Post Media View if post has media
  Widget _mediaView(Post post) {
    return Column(
      children: [
        PostMediaView(media: post.postmedia, style: post.style),
        SizedBox(height: 8.h),
      ],
    );
  }

  // Return post actions like comments, likes, share
  Widget _postActions(Post post) {
    return PostActions(
      hasTags: post.tags.isNotEmpty,
      likesCount: post.likes.length,
      commentsCount: post.comments.length,
      onLike: () {}, // Implement your like functionality here
      onComment: () {}, // Implement your comment functionality here
      onShare: () {}, // Implement your share functionality here
    );
  }
}
