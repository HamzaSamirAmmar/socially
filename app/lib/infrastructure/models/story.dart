import 'package:isar/isar.dart';
import 'post_media.dart';

part 'story.g.dart';

@collection
class Story {
  Id id = Isar.autoIncrement;
  
  @Index(unique: true)
  String supabaseId;
  
  String userId;
  String mediaUrl;
  
  @enumerated
  MediaType mediaType;
  
  DateTime createdAt;
  DateTime expiresAt;

  Story({
    required this.supabaseId,
    required this.userId,
    required this.mediaUrl,
    required this.mediaType,
    required this.createdAt,
    required this.expiresAt,
  });
  
  String get mediaTypeString => mediaType.name;
}
