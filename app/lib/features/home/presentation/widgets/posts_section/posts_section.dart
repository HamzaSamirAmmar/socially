import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../state_m/posts_cubit/posts_cubit.dart';
import 'empty_posts_view.dart';
import 'error_view.dart';
import 'post_list.dart';
import 'post_list_item.dart';

class PostsSection extends StatefulWidget {
  const PostsSection({super.key});

  @override
  State<PostsSection> createState() => _PostsSectionState();
}

class _PostsSectionState extends State<PostsSection> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsCubit, PostsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
          postsLoading:
              () => const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()),
              ),
          postsLoaded:
              (posts) =>
                  posts.isEmpty
                      ? const SliverToBoxAdapter(child: EmptyPostsView())
                      : SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => PostListItem(post: posts[index]),
                          childCount: posts.length,
                        ),
                      ),
          error:
              (error, callback) => SliverToBoxAdapter(
                child: ErrorView(error: error, onRetry: callback),
              ),
        );
      },
    );
  }
}
