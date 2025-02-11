import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socially/core/infrastructure/database_models/base_db_model.dart';
import 'package:socially/core/infrastructure/database_models/user_db_model.dart';

import '../../../../core/data/models/base_model.dart';
import '../../domain/entities/user.dart';
import 'post_model.dart';

part 'user_model.freezed.dart';

/// Model class for Post with JSON serialization support.
@freezed
class UserModel with _$UserModel implements BaseModel {
  const UserModel._();

  const factory UserModel({
    required int id,
    required String name,
    required String email,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'avatar_url') required String? avatarUrl,
    @Default([]) List<PostModel> posts,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      avatarUrl: json['avatar_url'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      posts:
          (json['posts'] as List<dynamic>?)
              ?.map((e) => PostModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'email': email,
    'avatar_url': avatarUrl,
    'created_at': createdAt,
    'posts': posts.map((e) => e.toJson()).toList(),
  };

  @override
  User toEntity() => User(
    id: id,
    name: name,
    email: email,
    avatarUrl: avatarUrl,
    createdAt: createdAt,
    posts: posts.map((e) => e.toEntity()).toList(),
  );

  @override
  BaseDbModel toDbModel() =>
      UserDbModel(id: id, name: name, email: email, createdAt: createdAt, avatarUrl: avatarUrl);
}
