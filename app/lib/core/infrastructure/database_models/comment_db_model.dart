import 'package:isar/isar.dart';
import 'package:socially/core/data/models/base_model.dart';
import 'package:socially/core/infrastructure/database_models/base_db_model.dart';
import 'package:socially/core/infrastructure/database_models/user_db_model.dart';
import '../../../features/home/data/models/comment_model.dart';
import 'post_db_model.dart';

part 'comment_db_model.g.dart';

@collection
class CommentDbModel implements BaseDbModel {
  @Index(unique: true)
  Id id;

  String content;
  DateTime createdAt;

  final post = IsarLink<PostDbModel>(); // One post
  final user = IsarLink<UserDbModel>(); // One user

  CommentDbModel({
    required this.id,
    required this.content,
    required this.createdAt,
  });

  @override
  BaseModel toModel() => CommentModel(
        id: id,
        postId: post.value?.id ?? -1,
        userId: user.value?.id ?? -1,
        content: content,
        createdAt: createdAt,
      );
}
