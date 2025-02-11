import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../domain/entities/post.dart';
import '../../state_m/posts_cubit/posts_cubit.dart';
import '../error_view.dart';
import 'empty_posts_view.dart';
import 'post_list_item.dart';

class PostsSection extends StatelessWidget {
  const PostsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsCubit, PostsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
          postsLoading: () => _loadingState(),
          postsLoaded: (posts) => _loadedPostsState(posts),
          error: (error, callback) => _errorState(error, callback),
        );
      },
    );
  }

  /// **Shimmer Loading State**
  Widget _loadingState() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => _shimmerPostItem(context),
        childCount: 5, // Show 5 shimmer items for loading state
      ),
    );
  }

  /// **Builds the shimmer skeleton for posts**
  Widget _shimmerPostItem(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 14.w),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(0.3),
        highlightColor: Colors.grey.withOpacity(0.5),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _shimmerBox(width: 150.w, height: 16.h), // Fake header text
              SizedBox(height: 8.h),
              _shimmerBox(width: double.infinity, height: 200.h), // Fake media
              SizedBox(height: 8.h),
              _shimmerBox(width: double.infinity, height: 16.h), // Fake content
              SizedBox(height: 4.h),
              _shimmerBox(width: 180.w, height: 16.h), // Fake tags
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _shimmerCircle(30.w), // Fake like button
                  _shimmerCircle(30.w), // Fake comment button
                  _shimmerCircle(30.w), // Fake share button
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// **Helper method to create shimmer rectangles**
  Widget _shimmerBox({required double width, required double height}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Colors.white,
      ),
    );
  }

  /// **Helper method to create shimmer circles**
  Widget _shimmerCircle(double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
    );
  }

  /// **Loaded Posts State**
  Widget _loadedPostsState(List<Post> posts) {
    return posts.isEmpty
        ? const SliverToBoxAdapter(child: EmptyPostsView())
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => PostListItem(post: posts[index]),
              childCount: posts.length,
            ),
          );
  }

  /// **Error State**
  Widget _errorState(String error, VoidCallback callback) {
    return SliverToBoxAdapter(
      child: ErrorView(error: error, onRetry: callback),
    );
  }
}
