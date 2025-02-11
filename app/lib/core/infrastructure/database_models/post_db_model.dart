import 'package:isar/isar.dart';
import 'package:socially/core/data/models/base_model.dart';
import 'package:socially/core/infrastructure/database_models/base_db_model.dart';
import 'package:socially/features/home/data/models/comment_model.dart';
import 'package:socially/features/home/data/models/like_model.dart';
import 'package:socially/features/home/domain/enums/media_style.dart';
import 'package:socially/features/home/domain/enums/post_type.dart';

import '../../../features/home/data/models/post_media_model.dart';
import '../../../features/home/data/models/post_model.dart';
import '../../../features/home/data/models/user_model.dart';
import 'comment_db_model.dart';
import 'like_db_model.dart';
import 'post_media_db_model.dart';
import 'user_db_model.dart';

part 'post_db_model.g.dart';

@collection
class PostDbModel implements BaseDbModel {
  @Index(unique: true)
  Id id;

  int userId;
  String content;
  DateTime createdAt;

  @enumerated
  MediaStyle mediaStyle;

  @enumerated
  PostType postType;

  List<String> tags;

  final media = IsarLinks<PostMediaDbModel>();
  final likes = IsarLinks<LikeDbModel>();
  final comments = IsarLinks<CommentDbModel>();
  final user = IsarLink<UserDbModel>();

  PostDbModel({
    required this.id,
    required this.userId,
    this.content = '',
    required this.createdAt,
    required this.tags,
    required this.mediaStyle,
    required this.postType,
  });

  @override
  BaseModel toModel() => PostModel(
    id: id,
    userId: user.value?.id ?? -1,
    content: content,
    createdAt: createdAt,
    style: mediaStyle,
    type: postType,
    tags: tags,
    postmedia: media.map((e) => e.toModel() as PostMediaModel).toList(),
    comments: comments.map((e) => e.toModel() as CommentModel).toList(),
    likes: likes.map((e) => e.toModel() as LikeModel).toList(),
    users:
        user.value?.toModel() as UserModel? ??
        UserModel(
          id: -1,
          avatarUrl: '',
          name: '',
          email: '',
          createdAt: DateTime.now(),
        ),
  );
}
