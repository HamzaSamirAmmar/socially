import 'package:freezed_annotation/freezed_annotation.dart';

enum PostType {
  @JsonValue('post')
  post,

  @JsonValue('story')
  story,
}
