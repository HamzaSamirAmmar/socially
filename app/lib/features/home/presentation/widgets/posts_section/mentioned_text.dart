import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../core/extensions/text_style_extension.dart';
import '../../../../../core/infrastructure/logger/socially_logger.dart';

class MentionedText extends StatelessWidget {
  final String content;

  const MentionedText({required this.content, super.key});

  @override
  Widget build(BuildContext context) {
    final List<TextSpan> spans = [];
    final RegExp mentionRegex = RegExp(r'@\w+');
    final Iterable<RegExpMatch> matches = mentionRegex.allMatches(content);

    int lastMatchEnd = 0;

    for (final match in matches) {
      if (match.start > lastMatchEnd) {
        spans.add(TextSpan(
          text: content.substring(lastMatchEnd, match.start),
          style: context.defaultTextStyle, // Use extension method
        ));
      }

      final String mention = content.substring(match.start, match.end);
      spans.add(TextSpan(
        text: mention,
        style: context.mentionTextStyle, // Use extension method
        recognizer: TapGestureRecognizer()..onTap = () {
          sLogger.d("Tapped on: $mention");
        },
      ));

      lastMatchEnd = match.end;
    }

    if (lastMatchEnd < content.length) {
      spans.add(TextSpan(
        text: content.substring(lastMatchEnd),
        style: context.defaultTextStyle,
      ));
    }

    return Text.rich(
      TextSpan(children: spans),
    );
  }
}