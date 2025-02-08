import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../logger/socially_logger.dart';

@module
abstract class DatabaseStorageRegister {
  @preResolve
  Future<Isar> create(@factoryMethod DatabaseSchemasPasser passer) async {
    final dir = await getApplicationSupportDirectory();

    try {
      final isar = await Isar.open(
        passer.schemas,
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

@singleton
class DatabaseSchemasPasser {
  bool _isSet = false;
  List<CollectionSchema> _schemas = [];

  List<CollectionSchema> get schemas => _schemas;

  void registerSchemas(List<CollectionSchema> schemas) {
    if (_isSet) return;

    _schemas = schemas;

    _isSet = true;
  }
}
