import 'package:isar/isar.dart';
import 'post.dart';

part 'comment.g.dart';

@collection
class Comment {
  Id id = Isar.autoIncrement;
  
  @Index(unique: true)
  String supabaseId;
  
  String userId;
  String content;
  DateTime createdAt;
  
  final post = IsarLink<Post>();

  Comment({
    required this.supabaseId,
    required this.userId,
    required this.content,
    required this.createdAt,
  });
}
