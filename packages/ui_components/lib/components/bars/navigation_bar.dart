import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socially_ui_components/theme/color.dart';
import 'package:socially_ui_components/theme/text_style.dart';

/// Navigation bar item metadata representation.
class SNavigationItem {
  /// Creates an instance of [SNavigationItem].
  const SNavigationItem({
    required this.label,
    required this.icon,
    SvgPicture? activeIcon,
    this.showBadge = false,
  }) : activeIcon = activeIcon ?? icon;

  /// The text displayed at the bottom of element.
  final String label;

  /// The icon displayed at the top of element.
  final SvgPicture icon;

  /// The active icon displayed at the top of element.
  ///
  /// If not defined `icon` will be used.
  final SvgPicture activeIcon;

  /// The badge to notify on a certain tab.
  final bool showBadge;
}

/// Default socially navigation bar.
///
/// Should be used in the bottom placement for now.
class SNavigationBar extends StatefulWidget {
  /// Creates an instance of [SNavigationBar].
  const SNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.items,
    required this.onTap,
  }) : assert(items.length >= 2, 'There should at least 2 items'),
       assert(
         selectedIndex < items.length,
         'Selected index should be within items',
       ),
       super(key: key);

  /// The currently selected item.
  final int selectedIndex;

  /// The list of items to displayed.
  final List<SNavigationItem> items;

  /// The action triggered on item tap.
  final Function(int) onTap;

  @override
  State<SNavigationBar> createState() => _SNavigationBarState();
}

class _SNavigationBarState extends State<SNavigationBar>
    with SingleTickerProviderStateMixin {
  late final TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 82,
      child: TabBar(
        controller: _controller,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: const EdgeInsets.symmetric(horizontal: 30),
        indicator: UnderlineTabIndicator(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          borderSide: BorderSide(
            width: 2.0,
            color:
                widget.selectedIndex == 0
                    ? SColor.primary
                    : widget.selectedIndex == 1
                    ? SColor.tertiary
                    : SColor.secondary,
          ),
        ),
        labelStyle: STextStyle.racingBody,
        labelColor:
            widget.selectedIndex == 0
                ? SColor.primary
                : widget.selectedIndex == 1
                ? SColor.tertiary
                : SColor.secondary,
        labelPadding: const EdgeInsets.only(bottom: 10),
        unselectedLabelColor: SColor.shade30,
        onTap: widget.onTap,
        tabs: [
          for (int i = 0; i < widget.items.length; i++)
            Tab(
              icon:
                  widget.selectedIndex == i
                      ? widget.items[i].activeIcon
                      : widget.items[i].icon,
              text: widget.items[i].label,
            ),
        ],
      ),
    );
  }
}
