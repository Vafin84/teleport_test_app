import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:teleport_test_app/core/constants/app_colors.dart';
import 'package:teleport_test_app/features/home/presentation/widgets/body_main_page.dart';
import 'package:teleport_test_app/features/home/presentation/widgets/header_main_page.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 220,
            decoration: const BoxDecoration(
                color: AppColors.blue,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [AppColors.blue, AppColors.darkBlue])),
          ),
          const SafeArea(
            child: Column(
              children: [
                HeaderMainPage(),
                Expanded(child: BodyMainPage()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
