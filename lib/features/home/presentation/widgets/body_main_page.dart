import 'package:flutter/material.dart';
import 'package:teleport_test_app/core/constants/app_colors.dart';
import 'package:teleport_test_app/features/home/presentation/widgets/favorites.dart';
import 'package:teleport_test_app/features/home/presentation/widgets/news.dart';

class BodyMainPage extends StatelessWidget {
  const BodyMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.whiteBody,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
      ),
      child: ListView(children: const [SizedBox(height: 30), Favorites(), SizedBox(height: 16), News()]),
    );
  }
}
