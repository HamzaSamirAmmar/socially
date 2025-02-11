import 'package:isar/isar.dart';
import 'package:socially/core/data/models/base_model.dart';
import 'package:socially/core/infrastructure/database_models/base_db_model.dart';
import 'package:socially/features/home/data/models/like_model.dart';
import 'post_db_model.dart';
import 'user_db_model.dart';

part 'like_db_model.g.dart';

@collection
class LikeDbModel implements BaseDbModel {
  @Index(unique: true)
  Id id;

  DateTime createdAt;

  final post = IsarLink<PostDbModel>(); // One post
  final user = IsarLink<UserDbModel>(); // One user

  LikeDbModel({
    required this.id,
    required this.createdAt,
  });

  @override
  BaseModel toModel() => LikeModel(
        id: id,
        userId: user.value?.id ?? -1,
        postId: post.value?.id ?? -1,
        createdAt: createdAt,
      );
}
