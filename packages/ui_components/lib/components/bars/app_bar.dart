import 'package:flutter/material.dart';
import 'package:socially_ui_components/ui_components.dart';

import '../../utils/responsive_utils.dart';
import '../assets/assets.gen.dart';

/// Navigation bar item metadata representation.
class SAppBar extends StatefulWidget implements PreferredSizeWidget {
  /// Creates an instance of [SAppBar].
  SAppBar({super.key, required this.onLeadingTap})
    : preferredSize = Size.fromHeight(kToolbarHeight);

  /// Callback when the leading widget is tapped.
  final VoidCallback onLeadingTap;

  @override
  final Size preferredSize;

  @override
  State<SAppBar> createState() => _SAppBarState();
}

class _SAppBarState extends State<SAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SAsset.logo,
      elevation: 0,
      centerTitle: true,
      leadingWidth: 50,
      leading: GestureDetector(
        onTap: widget.onLeadingTap,
        behavior: HitTestBehavior.opaque,
        child: Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: SAsset.notifications,
        ),
      ),
    );
  }
}
