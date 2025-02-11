import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socially/features/home/domain/enums/media_style.dart';
import 'package:socially/features/home/domain/enums/post_type.dart';

import '../../../../core/domain/entities/base_entity.dart';
import 'comment.dart';
import 'like.dart';
import 'post_media.dart';
import 'user.dart';

part 'post.freezed.dart';

/// Domain entity representing a post.
@freezed
class Post extends BaseEntity with _$Post {
  const factory Post({
    required int id,
    required String content,
    required int userId,
    required User user,
    required PostType type,
    required MediaStyle style,
    required DateTime createdAt,
    @Default([]) List<String> tags,
    @Default([]) List<PostMedia> postmedia,
    @Default([]) List<Comment> comments,
    @Default([]) List<Like> likes,
  }) = _Post;
}
