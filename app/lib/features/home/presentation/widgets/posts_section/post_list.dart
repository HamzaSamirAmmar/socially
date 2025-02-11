import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/entities/post.dart';
import 'post_list_item.dart';

/// A widget that displays a scrollable list of posts.
///
/// Uses a [ListView.builder] to efficiently render posts and
/// delegates the rendering of each post to [PostListItem].
class PostList extends StatelessWidget {
  final List<Post> posts;

  const PostList({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: posts.length,
        itemBuilder: (context, index) => PostListItem(post: posts[index]),
        separatorBuilder:
            (context, index) =>
                index == posts.length - 1
                    ? SizedBox(height: 50.h)
                    : const SizedBox.shrink(),
      ),
    );
  }
}
