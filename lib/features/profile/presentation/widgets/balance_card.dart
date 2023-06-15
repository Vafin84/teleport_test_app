import 'package:flutter/material.dart';
import 'package:teleport_test_app/core/constants/app_colors.dart';

class BalanceCard extends StatelessWidget {
  final String value;
  final String title;
  const BalanceCard({super.key, required this.value, required this.title});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(value, style: textTheme.titleLarge?.copyWith(color: AppColors.blue, fontWeight: FontWeight.w700)),
        Text(title, style: textTheme.titleMedium?.copyWith(color: AppColors.grey)),
      ],
    );
  }
}
