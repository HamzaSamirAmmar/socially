import 'package:freezed_annotation/freezed_annotation.dart';

/// Enum representing the type of media in a post.
enum MediaType {
  /// Image media type.
  @JsonValue('image')
  image,

  /// Video media type.
  @JsonValue('video')
  video,
}
