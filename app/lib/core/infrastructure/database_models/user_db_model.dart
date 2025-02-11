import 'package:isar/isar.dart';
import 'package:socially/features/home/data/models/user_model.dart';

import '../../data/models/base_model.dart';
import 'base_db_model.dart';

part 'user_db_model.g.dart';

@collection
class UserDbModel implements BaseDbModel {
  @Index(unique: true)
  Id id;

  String name;

  String? avatarUrl;

  @Index(unique: true)
  String email;

  DateTime createdAt;

  UserDbModel({
    required this.id,
    required this.name,
    this.avatarUrl,
    required this.email,
    required this.createdAt,
  });

  @override
  BaseModel toModel() => UserModel(
    id: id,
    name: name,
    email: email,
    createdAt: createdAt,
    avatarUrl: avatarUrl,
  );
}
