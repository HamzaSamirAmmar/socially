import 'package:isar/isar.dart';
import 'package:socially/core/data/models/base_model.dart';
import 'package:socially/core/infrastructure/database_models/base_db_model.dart';

import '../../../features/home/data/models/post_media_model.dart';
import '../../../features/home/domain/enums/media_type.dart';
import 'post_db_model.dart';

part 'post_media_db_model.g.dart';

@Collection()
class PostMediaDbModel implements BaseDbModel {
  @Index(unique: true)
  Id id;

  String mediaUrl;

  @enumerated
  MediaType mediaType;

  DateTime createdAt;

  final post = IsarLink<PostDbModel>();

  PostMediaDbModel({
    required this.id,
    required this.mediaUrl,
    required this.mediaType,
    required this.createdAt,
  });

  String get mediaTypeString => mediaType.name;

  @override
  BaseModel toModel() {
    return PostMediaModel(
      id: id,
      postId: post.value?.id ?? -1,
      type: mediaType,
      url: mediaUrl,
      createdAt: createdAt,
    );
  }
}
