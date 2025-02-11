import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/entities/base_entity.dart';

part 'comment.freezed.dart';

/// Entity representing a comment on a post.
///
/// This is the base class that will be extended by [CommentModel] to add
/// JSON serialization capabilities while maintaining the core domain logic.
@freezed
class Comment extends BaseEntity with _$Comment {
  const factory Comment({
    required int id,
    required int postId,
    required int userId,
    required String content,
    required DateTime createdAt,
  }) = _Comment;
}
