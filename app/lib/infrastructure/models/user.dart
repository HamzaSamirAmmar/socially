import 'package:isar/isar.dart';

part 'user.g.dart';

@collection
class User {
  Id id = Isar.autoIncrement;
  
  @Index(unique: true)
  String supabaseId;
  
  String name;
  String? avatarUrl;
  
  @Index(unique: true)
  String email;
  String password;

  User({
    required this.supabaseId,
    required this.name,
    this.avatarUrl,
    required this.email,
    required this.password,
  });
}
