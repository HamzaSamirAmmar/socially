import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/base_entity.dart';

/// Base class for all data models.
///
/// Provides common functionality for JSON serialization and mapping to domain entities.
abstract class BaseModel {
  @JsonKey(name: 'id')
  int get id;

  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Maps this model to its corresponding domain entity.
  BaseEntity toEntity();

  /// Creates a model from JSON data.
  Map<String, dynamic> toJson();
}
