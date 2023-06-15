import 'package:auto_route/auto_route.dart';
import 'package:teleport_test_app/core/presentation/pages/main_page.dart';
import 'package:teleport_test_app/core/presentation/pages/unknown_page.dart';
import 'package:teleport_test_app/features/bonus/presentation/pages/bonus_page.dart';
import 'package:teleport_test_app/features/chat/presentation/pages/chat_page.dart';
import 'package:teleport_test_app/features/home/presentation/pages/home_page.dart';
import 'package:teleport_test_app/features/payments/presentation/pages/payments_page.dart';
import 'package:teleport_test_app/features/profile/presentation/pages/profile_page.dart';
import 'package:teleport_test_app/features/shop/presentation/pages/shop_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: "/main",
          initial: true,
          page: MainRoute.page,
          children: [
            AutoRoute(path: "home", page: HomeRoute.page),
            AutoRoute(path: "shop", page: ShopRoute.page),
            AutoRoute(path: "payments", page: PaymentsRoute.page),
            AutoRoute(path: "chat", page: ChatRoute.page),
            AutoRoute(path: "bonus", page: BonusRoute.page),
          ],
        ),
        AutoRoute(path: "/profile", page: ProfileRoute.page),
        AutoRoute(path: '*', page: UnknownRoute.page)
      ];
}
