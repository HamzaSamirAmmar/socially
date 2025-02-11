import '../../data/models/base_model.dart';

abstract class BaseDbModel {
  /// Maps this model to its corresponding domain entity.
  BaseModel toModel();
}