import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teleport_test_app/core/constants/app_icons.dart';

class HeaderProfilePage extends StatelessWidget {
  const HeaderProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 8),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 8, right: 12),
          leading: IconButton(
            color: Colors.white,
            padding: EdgeInsets.zero,
            visualDensity: VisualDensity.compact,
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () => context.router.pop(),
          ),
          minLeadingWidth: 0,
          horizontalTitleGap: 0,
          title: Text("Профиль", style: textTheme.titleLarge?.copyWith(color: Colors.white)),
          trailing: IconButton(
            padding: EdgeInsets.zero,
            visualDensity: VisualDensity.compact,
            icon: SvgPicture.asset(AppIcons.exit),
            onPressed: () {},
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
