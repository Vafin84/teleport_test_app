import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:teleport_test_app/core/constants/app_icons.dart';
import 'package:teleport_test_app/core/presentation/widgets/navbar_iem.dart';
import 'package:teleport_test_app/core/routes/app_router.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        ShopRoute(),
        PaymentsRoute(),
        ChatRoute(),
        BonusRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          showUnselectedLabels: true,
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            tabsRouter.setActiveIndex(index);
          },
          items: [
            NavBarItem.selectItem(context: context, label: "Главная", iconLink: AppIcons.home),
            NavBarItem.selectItem(context: context, label: "Покупки", iconLink: AppIcons.shoping),
            NavBarItem.selectItem(context: context, label: "Платежи", iconLink: AppIcons.payments),
            NavBarItem.selectItem(context: context, label: "Чат", iconLink: AppIcons.chat),
            NavBarItem.selectItem(context: context, label: "Бонусы", iconLink: AppIcons.bonus),
          ],
        );
      },
    );
  }
}
