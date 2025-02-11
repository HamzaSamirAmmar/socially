import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/entities/base_entity.dart';

import 'post.dart';

part 'user.freezed.dart';

/// Domain entity representing a post.
@freezed
class User extends BaseEntity with _$User {
  const factory User({
    required int id,
    required String name,
    required String email,
    required String? avatarUrl,
    required DateTime createdAt,
    @Default([]) List<Post> posts,
  }) = _User;
}
