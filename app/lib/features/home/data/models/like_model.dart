import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socially/core/infrastructure/database_models/base_db_model.dart';
import 'package:socially/core/infrastructure/database_models/like_db_model.dart';

import '../../../../core/data/models/base_model.dart';
import '../../domain/entities/like.dart';

part 'like_model.freezed.dart';

/// Model class for Like with JSON serialization support.
@freezed
class LikeModel with _$LikeModel implements BaseModel {
  const LikeModel._();

  const factory LikeModel({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'post_id') required int postId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _LikeModel;

  factory LikeModel.fromJson(Map<String, dynamic> json) {
    return LikeModel(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      postId: json['post_id'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'user_id': userId,
    'post_id': postId,
    'created_at': createdAt.toIso8601String(),
  };

  @override
  Like toEntity() =>
      Like(id: id, userId: userId, postId: postId, createdAt: createdAt);

  @override
  BaseDbModel toDbModel() => LikeDbModel(id: id, createdAt: createdAt);
}
