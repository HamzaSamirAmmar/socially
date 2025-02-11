import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_datasource.dart';
import '../../models/post_model.dart';
import 'home_remote_datasource.dart';

@LazySingleton(as: HomeRemoteDatasource)
class HomeRemoteDatasourceImp extends BaseRemoteDataSourceImpl
    implements HomeRemoteDatasource {
  HomeRemoteDatasourceImp({required super.supabaseClient});

  @override
  Future<List<PostModel>> getHomePosts() async {
    return await getData(
      table: 'posts',
      fromJson: PostModel.fromJson,
      filters: {'post_type': 'post'},
      joins: <TableJoin>[
        TableJoin(relationName: 'postmedia'),
        TableJoin(relationName: 'likes'),
        TableJoin(relationName: 'comments'),
        TableJoin(relationName: 'users'),
      ],
    );
  }

  @override
  Future<List<PostModel>> getHomeStories() async {
    // final String formattedDate =
    //     DateTime.now()
    //         .subtract(const Duration(hours: 24))
    //         .toUtc()
    //         .toIso8601String();

    return await getData(
      table: 'posts',
      fromJson: PostModel.fromJson,
      filters: {
        'post_type': 'story',
        // 'created_at': formattedDate, // Filter for posts in the last 24 hours
      },
      joins: <TableJoin>[
        TableJoin(relationName: 'postmedia'),
        TableJoin(relationName: 'likes'),
        TableJoin(relationName: 'comments'),
        TableJoin(relationName: 'users'),
      ],
    );
  }
}
