import 'package:isar/isar.dart';
import 'post.dart';

part 'post_media.g.dart';

enum MediaType { image, video }

@Collection()
class PostMedia {
  Id? id;

  @Index(unique: true)
  String? supabaseId;

  String? mediaUrl;

  @Enumerated(EnumType.name)
  MediaType? mediaType;

  final post = IsarLink<Post>();

  PostMedia({
    required this.supabaseId,
    required this.mediaUrl,
    required this.mediaType,
  });

  String get mediaTypeString => mediaType?.name ?? '';
}
