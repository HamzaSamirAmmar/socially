import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_local_datasource.dart';
import 'home_local_datasource.dart';

@LazySingleton(as: HomeLocalDatasource)
class HomeLocalDatasourceImp extends BaseLocalDataSourceImpl
    implements HomeLocalDatasource {
  HomeLocalDatasourceImp(super.storage);
}
