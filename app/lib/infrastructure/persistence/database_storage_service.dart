import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:socially/infrastructure/models/comment.dart';
import 'package:socially/infrastructure/models/like.dart';
import 'package:socially/infrastructure/models/post.dart';
import 'package:socially/infrastructure/models/post_media.dart';
import 'package:socially/infrastructure/models/story.dart';
import 'package:socially/infrastructure/models/user.dart';

import '../logger/socially_logger.dart';

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
