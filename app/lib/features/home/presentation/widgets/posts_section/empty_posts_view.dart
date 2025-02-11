import 'package:flutter/material.dart';

/// A widget displayed when there are no posts to show.
class EmptyPostsView extends StatelessWidget {
  const EmptyPostsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'No posts yet',
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
    );
  }
}
