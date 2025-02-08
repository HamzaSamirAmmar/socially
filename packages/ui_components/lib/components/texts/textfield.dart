import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:socially_ui_components/components/assets/socially_asset.dart';
import 'package:socially_ui_components/components/texts/text.dart';
import 'package:socially_ui_components/spacing.dart';
import 'package:socially_ui_components/theme/color.dart';
import 'package:socially_ui_components/theme/text_style.dart';

/// Default socially text field widget
class STextField extends StatefulWidget {
  /// Creates instance of an [STextField] widget.
  const STextField({
    Key? key,
    required this.labelText,
    this.controller,
    this.inputFormatters,
    this.keyboardType,
    this.textInputAction,
    this.onEditingComplete,
    this.autofocus = false,
    this.enabled = true,
    this.obscureText = false,
    this.errorText,
    this.hintText,
    this.autofillHints,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
  }) : super(key: key);

  /// The text that describes the input field.
  final String labelText;

  /// Controls the text being edited.
  ///
  /// If null, this widget will create its own [TextEditingController].
  final TextEditingController? controller;

  /// Format coming input to the field.
  final List<TextInputFormatter>? inputFormatters;

  /// {@macro flutter.widgets.editableText.keyboardType}
  final TextInputType? keyboardType;

  /// The type of action button to use for the keyboard.
  final TextInputAction? textInputAction;

  /// {@macro flutter.widgets.editableText.onEditingComplete}
  final VoidCallback? onEditingComplete;

  /// {@macro flutter.widgets.editableText.autofocus}
  final bool autofocus;

  /// If false the text field is "disabled": it ignores taps and its
  /// [decoration] is rendered in grey.
  ///
  /// If non-null this property overrides the [decoration]'s
  /// [InputDecoration.enabled] property.
  final bool enabled;

  /// {@macro flutter.widgets.editableText.obscureText}
  final bool obscureText;

  /// The placeholder text displayed in input when defined.
  final String? hintText;

  /// The error text displayed below input text.
  final String? errorText;

  /// {@macro flutter.widgets.editableText.autofillHints}
  /// {@macro flutter.services.AutofillConfiguration.autofillHints}
  final Iterable<String>? autofillHints;

  /// An icon that appears before the editable part of the text field.
  final Widget? prefixIcon;

  /// An icon that appears after the editable part of the text field.
  final Widget? suffixIcon;

  /// A tap event on textfield
  final GestureTapCallback? onTap;

  @override
  State<STextField> createState() => _STextFieldState();
}

class _STextFieldState extends State<STextField> {
  late TextEditingController _controller;
  late FocusNode _focusNode;

  late bool _hasFocus;

  bool get _hasError =>
      widget.errorText != null && widget.errorText!.isNotEmpty;

  Color get _borderColor {
    if (_hasError) {
      return Theme.of(context).colorScheme.primary;
    } else if (_hasFocus) {
      return Theme.of(context).colorScheme.secondary;
    } else {
      return Colors.transparent;
    }
  }

  Color get _backgroundColor {
    if (_hasError) {
      return Theme.of(context).colorScheme.onError;
    } else if (_hasFocus) {
      return Theme.of(context).colorScheme.onSecondary;
    } else {
      return SColor.shade5;
    }
  }

  @override
  void initState() {
    super.initState();

    _hasFocus = widget.autofocus;
    _controller = widget.controller ?? TextEditingController();
    _focusNode = FocusNode();

    _focusNode.addListener(_focusChange);
  }

  void _focusChange() {
    if (_hasFocus == _focusNode.hasFocus) return;

    setState(() {
      _hasFocus = _focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    _focusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            if (_hasError)
              Padding(
                padding: const EdgeInsets.only(top: 55.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: SColor.primary5,
                    borderRadius: BorderRadius.all(Radius.circular(SSpacing.s)),
                  ),
                  padding: const EdgeInsets.only(top: SSpacing.s),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: SSpacing.m,
                      left: SSpacing.xxs,
                      bottom: SSpacing.m,
                      top: SSpacing.m,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: SText.subtitle(
                              widget.errorText!,
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            GestureDetector(
              onTap: widget.onTap,
              child: Container(
                height: 72.0,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: _borderColor),
                  borderRadius: BorderRadius.circular(12),
                  color: _backgroundColor,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: SSpacing.m,
                  horizontal: SSpacing.m,
                ),
                child: TextField(
                  controller: _controller,
                  inputFormatters: widget.inputFormatters,
                  focusNode: _focusNode,
                  obscureText: widget.obscureText,
                  keyboardType: widget.keyboardType,
                  autofillHints: widget.autofillHints,
                  textInputAction: widget.textInputAction,
                  onEditingComplete: widget.onEditingComplete,
                  autofocus: widget.autofocus,
                  magnifierConfiguration:
                      defaultTargetPlatform == TargetPlatform.iOS
                          ? TextMagnifierConfiguration.disabled
                          : null,
                  enabled: widget.enabled,
                  style: STextStyle.robotoBody.copyWith(
                    fontWeight: FontWeight.w700,
                    color:
                        _hasError
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.secondary,
                  ),
                  cursorColor:
                      _hasError
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.secondary,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    prefixIcon: widget.prefixIcon,
                    suffixIcon: _focusNode.hasFocus ? widget.suffixIcon : null,
                    hintText: widget.hintText,
                    labelText: widget.labelText,
                    labelStyle: STextStyle.robotoSubtitle.copyWith(
                      color: SColor.shade70,
                    ),
                    enabled: widget.enabled,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.only(bottom: 12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
