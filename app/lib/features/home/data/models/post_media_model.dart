import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data/models/base_model.dart';
import '../../domain/entities/post_media.dart';
import '../../domain/enums/media_type.dart';

part 'post_media_model.freezed.dart';

/// Model class for PostMedia with JSON serialization support.
@freezed
class PostMediaModel with _$PostMediaModel implements BaseModel {
  const PostMediaModel._();

  const factory PostMediaModel({
    required int id,
    @JsonKey(name: 'media_url') required String url,
    @JsonKey(name: 'media_type') required MediaType type,
    @JsonKey(name: 'post_id') required int postId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _PostMediaModel;

  factory PostMediaModel.fromJson(Map<String, dynamic> json) {
    return PostMediaModel(
      id: json['id'] as int,
      url: json['media_url'] as String,
      type: MediaType.values.firstWhere(
        (e) => e.toString() == 'MediaType.${json['media_type']}',
        orElse: () => MediaType.image,
      ),
      postId: json['post_id'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'media_url': url,
        'media_type': type.toString().split('.').last,
        'post_id': postId,
        'created_at': createdAt.toIso8601String(),
      };

  @override
  PostMedia toEntity() => PostMedia(
        id: id,
        url: url,
        type: type,
        postId: postId,
        createdAt: createdAt,
      );
}
