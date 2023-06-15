import 'package:flutter/material.dart';
import 'package:teleport_test_app/core/constants/app_colors.dart';
import 'package:teleport_test_app/core/constants/app_images.dart';
import 'package:teleport_test_app/features/home/presentation/widgets/news_card.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(left: 12, right: 4),
          title: Text(
            "Новости".toUpperCase(),
          ),
          titleTextStyle: textTheme.titleMedium?.copyWith(color: AppColors.grey),
          trailing: const Icon(Icons.arrow_forward_ios_rounded, color: AppColors.grey),
        ),
        const SizedBox(height: 3),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              NewsCard(
                  imageLink: AppImages.window,
                  title: "Суперакция от Веккер Закажи окно до конца сентября и получи мегаскидку плюс бонусы на счёт."),
              NewsCard(imageLink: AppImages.cup, title: "При заказе одной кружки кофе Вы получите 20 бонусов на счет."),
            ],
          ),
        )
      ],
    );
  }
}
