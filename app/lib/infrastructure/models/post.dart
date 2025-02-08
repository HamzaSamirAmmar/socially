import 'package:isar/isar.dart';
import 'post_media.dart';
import 'comment.dart';
import 'like.dart';

part 'post.g.dart';

@collection
class Post {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  String supabaseId;

  String userId;
  String? content;
  DateTime createdAt;

  final media = IsarLinks<PostMedia>();
  final likes = IsarLinks<Like>();
  final comments = IsarLinks<Comment>();

  Post({
    required this.supabaseId,
    required this.userId,
    this.content,
    required this.createdAt,
  });
}
