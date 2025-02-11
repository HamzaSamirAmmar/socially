import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../logger/socially_logger.dart';
import '../models/comment.dart';
import '../models/like.dart';
import '../models/post.dart';
import '../models/post_media.dart';
import '../models/story.dart';
import '../models/user.dart';

@module
abstract class DatabaseStorageRegister {
  @preResolve
  Future<Isar> create() async {
    final dir = await getApplicationSupportDirectory();

    try {
      final isar = await Isar.open(
        [
          UserSchema,
          PostSchema,
          PostMediaSchema,
          LikeSchema,
          CommentSchema,
          StorySchema,
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
