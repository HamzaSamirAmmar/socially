import 'package:isar/isar.dart';
import 'post.dart';

part 'like.g.dart';

@collection
class Like {
  Id id = Isar.autoIncrement;
  
  @Index(unique: true)
  String supabaseId;
  
  String userId;
  DateTime createdAt;
  
  final post = IsarLink<Post>();

  Like({
    required this.supabaseId,
    required this.userId,
    required this.createdAt,
  });
}
