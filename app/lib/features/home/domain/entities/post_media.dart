import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/domain/entities/base_entity.dart';

import '../enums/media_type.dart';

part 'post_media.freezed.dart';

/// Entity representing post media (image or video).
///
/// This is the base class that will be extended by [PostMediaModel] to add
/// JSON serialization capabilities while maintaining the core domain logic.
@freezed
class PostMedia extends BaseEntity with _$PostMedia {
  const factory PostMedia({
    required int id,
    required int postId,
    required String url,
    required MediaType type,
    required DateTime createdAt,
  }) = _PostMedia;
}
