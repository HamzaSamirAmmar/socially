import 'package:freezed_annotation/freezed_annotation.dart';

/// Enum representing how media will be presented in a post.
enum MediaStyle {
  /// Stack media type.
  @JsonValue('stack')
  stack,

  /// Carousel media type.
  @JsonValue('carousel')
  carousel,
}
