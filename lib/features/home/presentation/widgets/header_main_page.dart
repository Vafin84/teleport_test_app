import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teleport_test_app/core/constants/app_colors.dart';
import 'package:teleport_test_app/core/constants/app_icons.dart';
import 'package:teleport_test_app/core/constants/app_images.dart';

class HeaderMainPage extends StatelessWidget {
  const HeaderMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 8),
        ListTile(
          leading: const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(AppImages.userPhoto),
          ),
          title: Text("Кирилл", style: textTheme.titleLarge?.copyWith(color: Colors.white)),
          trailing: Badge(label: const Text("3"), child: SvgPicture.asset(AppIcons.notification)),
          onTap: () => context.router.pushNamed('/profile'),
        ),
        ListTile(
          title: Text("Баланс кошелька ImPay", style: textTheme.titleMedium?.copyWith(color: Colors.white)),
          trailing: Text("5 485,67 ₽", style: textTheme.titleMedium?.copyWith(color: Colors.white)),
        ),
        Container(
          height: 40,
          margin: const EdgeInsets.only(left: 16, right: 16),
          padding: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(color: AppColors.white.withOpacity(0.15), borderRadius: BorderRadius.circular(6)),
          child: Theme(
            data: ThemeData(brightness: Brightness.dark),
            child: TextFormField(
              cursorColor: AppColors.white,
              style: textTheme.titleMedium?.copyWith(color: Colors.white),
              decoration: InputDecoration(
                  isDense: true,
                  hintText: "Поиск",
                  contentPadding: const EdgeInsets.all(8),
                  suffixIcon: SvgPicture.asset(AppIcons.search),
                  suffixIconConstraints: BoxConstraints.loose(const Size.fromHeight(30)),
                  border: InputBorder.none),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
