import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Navigation bar item metadata representation.
class SNavigationItem {
  /// Creates an instance of [SNavigationItem].
  const SNavigationItem({required this.icon});

  /// The icon displayed.
  final SvgPicture icon;
}

/// Default bottom navigation bar.
class SNavigationBar extends StatelessWidget {
  /// Creates an instance of [SNavigationBar].
  const SNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.items,
    required this.onTap,
  }) : super(key: key);

  /// The currently selected item.
  final int selectedIndex;

  /// The list of items displayed.
  final List<SNavigationItem> items;

  /// The action triggered on item tap.
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      child: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onTap,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          for (int i = 0; i < items.length; i++)
            BottomNavigationBarItem(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  selectedIndex == i
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onSecondary,
                  BlendMode.srcIn,
                ),
                child: items[i].icon,
              ),
              label: '',
            ),
        ],
      ),
    );
  }
}
