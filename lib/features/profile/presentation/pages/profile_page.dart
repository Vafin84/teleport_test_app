import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:teleport_test_app/core/constants/app_colors.dart';
import 'package:teleport_test_app/features/profile/presentation/widgets/body_profile_page.dart';
import 'package:teleport_test_app/features/profile/presentation/widgets/header_profile_page.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 130,
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
                HeaderProfilePage(),
                Expanded(child: BodyProfilePage()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
