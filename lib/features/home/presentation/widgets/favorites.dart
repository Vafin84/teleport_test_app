import 'package:flutter/material.dart';
import 'package:teleport_test_app/core/constants/app_colors.dart';
import 'package:teleport_test_app/core/constants/app_icons.dart';
import 'package:teleport_test_app/features/home/presentation/widgets/favorite_card.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text("Избранное".toUpperCase(), style: textTheme.titleMedium?.copyWith(color: AppColors.grey)),
        ),
        const SizedBox(height: 8),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              FavoriteCard(imageLink: AppIcons.myPayments, title: "Мои платежи"),
              FavoriteCard(imageLink: AppIcons.parkTickets, title: "Билеты"),
              FavoriteCard(imageLink: AppIcons.coupon, title: "Карты лояльности"),
              FavoriteCard(imageLink: AppIcons.qrCode, title: "QR - оплата"),
            ],
          ),
        )
      ],
    );
  }
}
