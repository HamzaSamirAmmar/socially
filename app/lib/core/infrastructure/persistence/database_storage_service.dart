import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../database_models/comment_db_model.dart';
import '../database_models/like_db_model.dart';
import '../database_models/post_db_model.dart';
import '../database_models/post_media_db_model.dart';
import '../database_models/user_db_model.dart';
import '../logger/socially_logger.dart';

@module
abstract class DatabaseStorageRegister {
  @preResolve
  Future<Isar> create() async {
    final dir = await getApplicationSupportDirectory();

    try {
      final isar = await Isar.open(
        [
          UserDbModelSchema,
          CommentDbModelSchema,
          LikeDbModelSchema,
          PostDbModelSchema,
          PostMediaDbModelSchema,
        ],
        directory: dir.path,
        inspector: kDebugMode,
      );

      sLogger.i("[Persistence] database storage initialized");

      return isar;
    } catch (exception, stack) {
      sLogger.f(exception, stack: stack);

      rethrow;
    }
  }
}
