import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teleport_test_app/core/routes/app_router.dart';
import 'package:teleport_test_app/core/themes/app_themes.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(App());
}

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.light,
      routerConfig: _appRouter.config(),
    );
  }
}
