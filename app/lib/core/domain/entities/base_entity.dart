/// Base class for all domain entities.
///
/// Provides common properties that all entities should have.
abstract class BaseEntity {
  final int id;
  final DateTime createdAt;

  const BaseEntity({
    required this.id,
    required this.createdAt,
  });
}
