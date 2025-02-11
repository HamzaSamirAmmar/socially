import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socially/core/infrastructure/database_models/base_db_model.dart';
import 'package:socially/core/infrastructure/database_models/post_db_model.dart';

import '../../../../core/data/models/base_model.dart';
import '../../domain/entities/post.dart';
import '../../domain/enums/media_style.dart';
import '../../domain/enums/post_type.dart';
import 'comment_model.dart';
import 'like_model.dart';
import 'post_media_model.dart';
import 'user_model.dart';

part 'post_model.freezed.dart';

/// Model class for Post with JSON serialization support.
@freezed
class PostModel with _$PostModel implements BaseModel {
  const PostModel._();

  const factory PostModel({
    required int id,
    required String content,
    required UserModel users,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'post_type') required PostType type,
    @JsonKey(name: 'media_style') required MediaStyle style,
    @Default([]) List<String> tags,
    @Default([]) List<PostMediaModel> postmedia,
    @Default([]) List<CommentModel> comments,
    @Default([]) List<LikeModel> likes,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'] as int,
      content: json['content'] as String,
      userId: json['user_id'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      type: PostType.values.firstWhere(
        (e) => e.toString() == 'PostType.${json['post_type']}',
        orElse: () => PostType.post,
      ),
      style: MediaStyle.values.firstWhere(
        (e) => e.toString() == 'MediaStyle.${json['media_style']}',
        orElse: () => MediaStyle.carousel,
      ),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          [],
      postmedia:
          (json['postmedia'] as List<dynamic>?)
              ?.map((e) => PostMediaModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      comments:
          (json['comments'] as List<dynamic>?)
              ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      likes:
          (json['likes'] as List<dynamic>?)
              ?.map((e) => LikeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],

      users: UserModel.fromJson(json['users'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'media_style': style,
    'content': content,
    'user_id': userId,
    'post_type': type,
    'tags': tags,
    'created_at': createdAt.toIso8601String(),
    'postmedia': postmedia.map((e) => e.toJson()).toList(),
    'comments': comments.map((e) => e.toJson()).toList(),
    'likes': likes.map((e) => e.toJson()).toList(),
    'users': users.toJson(),
  };

  @override
  Post toEntity() => Post(
    id: id,
    type: type,
    tags: tags,
    content: content,
    userId: userId,
    style: style,
    createdAt: createdAt,
    postmedia: postmedia.map((e) => e.toEntity()).toList(),
    comments: comments.map((e) => e.toEntity()).toList(),
    likes: likes.map((e) => e.toEntity()).toList(),
    user: users.toEntity(),
  );

  @override
  BaseDbModel toDbModel() => PostDbModel(
    id: id,
    userId: userId,
    createdAt: createdAt,
    tags: tags,
    mediaStyle: style,
    postType: type,
  );
}
