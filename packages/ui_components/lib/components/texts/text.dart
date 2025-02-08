import 'package:flutter/material.dart';

enum _TextType {
  display1,
  headline1,
  headline2,
  headline3,
  headline4,
  headline5,
  boldBody,
  body,
  smallBody,
  subtitle1,
  subtitle2,
}

/// Default socially text widget conforming to Figma pre-defined text styles.
class SText extends StatelessWidget {
  /// The largest text in socially.
  const SText.display1(
    this.text, {
    Key? key,
    this.textAlign = TextAlign.start,
    this.color,
    this.maxLines,
    this.overflow,
  })  : _textType = _TextType.display1,
        super(key: key);

  /// The largest headline text in socially.
  const SText.headline1(
    this.text, {
    Key? key,
    this.textAlign = TextAlign.start,
    this.color,
    this.maxLines,
    this.overflow,
  })  : _textType = _TextType.headline1,
        super(key: key);

  /// The second largest headline text in socially.
  const SText.headline2(
    this.text, {
    Key? key,
    this.textAlign = TextAlign.start,
    this.color,
    this.maxLines,
    this.overflow,
  })  : _textType = _TextType.headline2,
        super(key: key);

  /// The third largest headline text in socially.
  const SText.headline3(
    this.text, {
    Key? key,
    this.textAlign = TextAlign.start,
    this.color,
    this.maxLines,
    this.overflow,
  })  : _textType = _TextType.headline3,
        super(key: key);

  /// The fourth largest headline text in socially.
  const SText.headline4(
    this.text, {
    Key? key,
    this.textAlign = TextAlign.start,
    this.color,
    this.maxLines,
    this.overflow,
  })  : _textType = _TextType.headline4,
        super(key: key);

  /// The fifth largest headline text in socially.
  const SText.headline5(
    this.text, {
    Key? key,
    this.textAlign = TextAlign.start,
    this.color,
    this.maxLines,
    this.overflow,
  })  : _textType = _TextType.headline5,
        super(key: key);

  /// The smallest headline text in socially.
  const SText.boldBody(
    this.text, {
    Key? key,
    this.textAlign = TextAlign.start,
    this.color,
    this.maxLines,
    this.overflow,
  })  : _textType = _TextType.boldBody,
        super(key: key);

  /// The common text in socially.
  const SText.body(
    this.text, {
    Key? key,
    this.textAlign = TextAlign.start,
    this.color,
    this.maxLines,
    this.overflow,
  })  : _textType = _TextType.body,
        super(key: key);

  /// The smaller common text in socially.
  const SText.smallBody(
    this.text, {
    Key? key,
    this.textAlign = TextAlign.start,
    this.color,
    this.maxLines,
    this.overflow,
  })  : _textType = _TextType.smallBody,
        super(key: key);

  /// The subtitle text in socially.
  const SText.subtitle(
    this.text, {
    Key? key,
    this.textAlign = TextAlign.start,
    this.color,
    this.maxLines,
    this.overflow,
  })  : _textType = _TextType.subtitle1,
        super(key: key);

  /// The smallest text in socially.
  const SText.smallSubtitle(
    this.text, {
    Key? key,
    this.textAlign = TextAlign.start,
    this.color,
    this.maxLines,
    this.overflow,
  })  : _textType = _TextType.subtitle2,
        super(key: key);

  /// The string value of text.
  final String text;

  /// The alignment of the text.
  ///
  /// Default value is [TextAlign.start].
  final TextAlign textAlign;

  /// Value of color to override default style value.
  final Color? color;

  /// Maximum number of lines that text can have.
  ///
  /// No defined, infinite number of lines.
  final int? maxLines;

  /// How visual overflow should be handled.
  final TextOverflow? overflow;

  final _TextType _textType;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    TextStyle textStyle;

    switch (_textType) {
      case _TextType.display1:
        textStyle = textTheme.displayMedium!;
        break;
      case _TextType.headline1:
        textStyle = textTheme.headlineLarge!;
        break;
      case _TextType.headline2:
        textStyle = textTheme.headlineMedium!;
        break;
      case _TextType.headline3:
        textStyle = textTheme.headlineSmall!;
        break;
      case _TextType.headline4:
        textStyle = textTheme.titleLarge!;
        break;
      case _TextType.headline5:
        textStyle = textTheme.titleMedium!;
        break;
      case _TextType.boldBody:
        textStyle = textTheme.bodyLarge!;
        break;
      case _TextType.body:
        textStyle = textTheme.bodyMedium!;
        break;
      case _TextType.smallBody:
        textStyle = textTheme.bodySmall!;
        break;
      case _TextType.subtitle1:
        textStyle = textTheme.labelMedium!;
        break;
      case _TextType.subtitle2:
        textStyle = textTheme.labelSmall!;
        break;
    }

    if (color != null) {
      textStyle = textStyle.copyWith(color: color);
    }

    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow ?? TextOverflow.fade,
      style: textStyle,
      textAlign: textAlign,
    );
  }
}
