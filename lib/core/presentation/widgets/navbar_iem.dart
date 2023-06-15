import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarItem {
  static selectItem({required BuildContext context, required String iconLink, String? label}) {
    final theme = Theme.of(context).bottomNavigationBarTheme;
    return BottomNavigationBarItem(
      activeIcon: SvgPicture.asset(
        iconLink,
        height: 26,
        colorFilter: ColorFilter.mode(theme.selectedItemColor!, BlendMode.srcIn),
      ),
      icon: SvgPicture.asset(
        iconLink,
        height: 26,
        colorFilter: ColorFilter.mode(theme.unselectedItemColor!, BlendMode.srcIn),
      ),
      label: label,
    );
  }
}
