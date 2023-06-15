import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teleport_test_app/core/constants/app_colors.dart';

class FavoriteCard extends StatelessWidget {
  final String imageLink;
  final String title;
  const FavoriteCard({super.key, required this.imageLink, required this.title});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      surfaceTintColor: AppColors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      margin: const EdgeInsets.all(8),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 95,
        width: 87,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              imageLink,
              colorFilter: const ColorFilter.mode(AppColors.blue, BlendMode.srcIn),
            ),
            const SizedBox(height: 16),
            Text(title, style: textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
