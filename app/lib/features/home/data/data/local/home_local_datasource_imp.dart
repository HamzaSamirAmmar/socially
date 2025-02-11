import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:socially/core/infrastructure/persistence/local_storage_service.dart';
import 'package:socially/features/home/data/models/post_model.dart';

import '../../../../../core/data/base_local_datasource.dart';
import '../../../../../core/infrastructure/database_models/post_db_model.dart';
import '../../../domain/enums/post_type.dart';
import 'home_local_datasource.dart';

@LazySingleton(as: HomeLocalDatasource)
class HomeLocalDatasourceImp extends BaseLocalDataSourceImpl
    implements HomeLocalDatasource {
  final Isar _isar;
  final LocalStorageService _storage;

  HomeLocalDatasourceImp(this._storage, this._isar) : super(_storage, _isar);
  @override
  Future<List<PostDbModel>> getHomeStories() async {
    final stories =
        await _isar.postDbModels
            .filter()
            .postTypeEqualTo(PostType.story) // Fetch only 'story' posts
            .findAll();

    // Manually load linked data (Joins)
    for (var post in stories) {
      await post.user.load(); // Load linked user
      await post.likes.load(); // Load linked likes
      await post.comments.load(); // Load linked comments
    }

    return stories;
  }

  @override
  Future<void> saveHomeStories(List<PostModel> stories) async {
      await _isar.writeTxn(() async {
        // Delete old stories
        await _isar.postDbModels.filter().postTypeEqualTo(PostType.story).deleteAll();
        // Save new stories
        await _isar.postDbModels.putAll([]);
      });
  }

  // @override
  // Future<List<PostDbModel>> getHomePosts() async {
  //   return _isar.postDbModels.where().findAll();
  // }

  // @override
  // Future<List<PostDBModel>> getHomeStories() async {
  //   return _isar.postDBModels.filter().isStoryEqualTo(true).findAll();
  // }

  // @override
  // Future<void> saveHomePosts(List<PostDBModel> posts) async {
  //   await _isar.writeTxn(() async {
  //     // Get current count
  //     final currentCount =
  //         await _isar.postDBModels.filter().isStoryEqualTo(false).count();

  //     // If we'll exceed 20 posts, delete oldest ones
  //     if (currentCount + posts.length > 20) {
  //       final toDelete = currentCount + posts.length - 20;
  //       final oldestPosts =
  //           await _isar.postDBModels
  //               .filter()
  //               .isStoryEqualTo(false)
  //               .sortByCreatedAtDesc()
  //               .offset(20)
  //               .limit(toDelete)
  //               .findAll();

  //       await _isar.postDBModels.deleteAll(
  //         oldestPosts.map((p) => p.id).toList(),
  //       );
  //     }

  //     // Save new posts
  //     await _isar.postDBModels.putAll(posts);
  //   });
  // }

  // @override
  // Future<void> saveHomeStories(List<PostDBModel> stories) async {
  //   await _isar.writeTxn(() async {
  //     // Delete old stories
  //     await _isar.postDBModels.filter().isStoryEqualTo(true).deleteAll();
  //     // Save new stories
  //     await _isar.postDBModels.putAll(stories);
  //   });
  // }
}
