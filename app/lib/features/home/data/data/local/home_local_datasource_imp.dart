import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import '../../../../../core/data/base_local_datasource.dart';
import '../../../../../core/infrastructure/database_models/comment_db_model.dart';
import '../../../../../core/infrastructure/database_models/like_db_model.dart';
import '../../../../../core/infrastructure/database_models/post_db_model.dart';
import '../../../../../core/infrastructure/database_models/post_media_db_model.dart';
import '../../../../../core/infrastructure/database_models/user_db_model.dart';
import '../../../../../core/infrastructure/persistence/local_storage_service.dart';
import '../../../domain/enums/post_type.dart';
import '../../models/post_model.dart';
import 'home_local_datasource.dart';

@LazySingleton(as: HomeLocalDatasource)
@LazySingleton(as: HomeLocalDatasource)
class HomeLocalDatasourceImp extends BaseLocalDataSourceImpl
    implements HomeLocalDatasource {
  final Isar _isar;
  final LocalStorageService _storage;

  HomeLocalDatasourceImp(this._storage, this._isar) : super(_storage, _isar);

  @override
  Future<List<PostModel>> getHomePosts() async {
    final posts =
        await _isar.postDbModels
            .filter()
            .postTypeEqualTo(PostType.post) // Fetch only 'post' posts
            .findAll();

    // Manually load linked data (Joins)
    for (var post in posts) {
      await post.user.load(); // Load linked user
      await post.media.load(); // Load linked media
      await post.likes.load(); // Load linked likes
      await post.comments.load(); // Load linked comments
    }

    return posts.map((post) => post.toModel() as PostModel).toList();
  }

  @override
  Future<void> saveHomePosts(List<PostModel> posts) async {
    await _isar.writeTxn(() async {
      // Delete old posts
      await _isar.postDbModels
          .filter()
          .postTypeEqualTo(PostType.post)
          .deleteAll();

      // Save new posts
      for (final post in posts) {
        final postDb = post.toDbModel() as PostDbModel;
        final userDb = post.users.toDbModel() as UserDbModel;

        // Save main entities
        await _isar.postDbModels.put(postDb);
        await _isar.userDbModels.put(userDb);

        // Link user to post
        postDb.user.value = userDb;
        await postDb.user.save();

        // Handle media
        for (final media in post.postmedia) {
          final mediaDb = media.toDbModel() as PostMediaDbModel;
          await _isar.postMediaDbModels.put(mediaDb);
          // Link media to post
          postDb.media.add(mediaDb);
          mediaDb.post.value = postDb;
          await mediaDb.post.save();
        }
        await postDb.media.save();

        // Handle comments
        for (final comment in post.comments) {
          final commentDb = comment.toDbModel() as CommentDbModel;
          await _isar.commentDbModels.put(commentDb);
          // Link comment to post and user
          postDb.comments.add(commentDb);
          commentDb.post.value = postDb;
          commentDb.user.value = userDb;
          await commentDb.post.save();
          await commentDb.user.save();
        }
        await postDb.comments.save();

        // Handle likes
        for (final like in post.likes) {
          final likeDb = like.toDbModel() as LikeDbModel;
          await _isar.likeDbModels.put(likeDb);
          // Link like to post and user
          postDb.likes.add(likeDb);
          likeDb.post.value = postDb;
          likeDb.user.value = userDb;
          await likeDb.post.save();
          await likeDb.user.save();
        }
        await postDb.likes.save();
      }
    });
  }

  @override
  Future<List<PostModel>> getHomeStories() async {
    final stories =
        await _isar.postDbModels
            .filter()
            .postTypeEqualTo(PostType.story)
            .findAll();

    // Manually load linked data (Joins)
    for (var post in stories) {
      await post.user.load(); // Load linked user
      await post.media.load(); // Load linked user
      await post.likes.load(); // Load linked likes
      await post.comments.load(); // Load linked comments
    }

    return stories.map((story) => story.toModel() as PostModel).toList();
  }

  @override
  Future<void> saveHomeStories(List<PostModel> stories) async {
    await _isar.writeTxn(() async {
      // Delete old stories
      await _isar.postDbModels
          .filter()
          .postTypeEqualTo(PostType.story)
          .deleteAll();

      // Save new stories
      for (final story in stories) {
        final postDb = story.toDbModel() as PostDbModel;
        final userDb = story.users.toDbModel() as UserDbModel;

        // Save main entities
        await _isar.postDbModels.put(postDb);
        await _isar.userDbModels.put(userDb);

        // Link user to post
        postDb.user.value = userDb;
        await postDb.user.save();

        // Handle media
        for (final media in story.postmedia) {
          final mediaDb = media.toDbModel() as PostMediaDbModel;
          await _isar.postMediaDbModels.put(mediaDb);
          // Link media to post
          postDb.media.add(mediaDb);
          mediaDb.post.value = postDb;
          await mediaDb.post.save();
        }
        await postDb.media.save();

        // Handle comments
        for (final comment in story.comments) {
          final commentDb = comment.toDbModel() as CommentDbModel;
          await _isar.commentDbModels.put(commentDb);
          // Link comment to post and user
          postDb.comments.add(commentDb);
          commentDb.post.value = postDb;
          commentDb.user.value = userDb;
          await commentDb.post.save();
          await commentDb.user.save();
        }
        await postDb.comments.save();

        // Handle likes
        for (final like in story.likes) {
          final likeDb = like.toDbModel() as LikeDbModel;
          await _isar.likeDbModels.put(likeDb);
          // Link like to post and user
          postDb.likes.add(likeDb);
          likeDb.post.value = postDb;
          likeDb.user.value = userDb;
          await likeDb.post.save();
          await likeDb.user.save();
        }
        await postDb.likes.save();
      }
    });
  }
}
