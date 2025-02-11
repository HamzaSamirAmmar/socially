import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/domain/entities/base_entity.dart';

part 'like.freezed.dart';

/// Entity representing a like on a post.
///
/// This is the base class that will be extended by [LikeModel] to add
/// JSON serialization capabilities while maintaining the core domain logic.
@freezed
class Like extends BaseEntity with _$Like {
  const factory Like({
    required int id,
    required int postId,
    required int userId,
    required DateTime createdAt,
  }) = _Like;
}
