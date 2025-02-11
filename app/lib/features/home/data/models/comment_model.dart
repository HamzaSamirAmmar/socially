import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data/models/base_model.dart';
import '../../domain/entities/comment.dart';

part 'comment_model.freezed.dart';

/// Model class for Comment with JSON serialization support.
@freezed
class CommentModel with _$CommentModel implements BaseModel {
  const CommentModel._();

  const factory CommentModel({
    required int id,
    required String content,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'post_id') required int postId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
      id: json['id'] as int,
      content: json['content'] as String,
      userId: json['user_id'] as int,
      postId: json['post_id'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'content': content,
        'user_id': userId,
        'post_id': postId,
        'created_at': createdAt.toIso8601String(),
      };

  @override
  Comment toEntity() => Comment(
        id: id,
        content: content,
        userId: userId,
        postId: postId,
        createdAt: createdAt,
      );
}
