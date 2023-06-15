import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teleport_test_app/core/constants/app_colors.dart';
import 'package:teleport_test_app/core/constants/app_icons.dart';
import 'package:teleport_test_app/core/constants/app_images.dart';
import 'package:teleport_test_app/features/profile/presentation/widgets/balance_card.dart';

class BodyProfilePage extends StatelessWidget {
  const BodyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.whiteBody,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
      ),
      child: ListView(shrinkWrap: true, children: [
        const SizedBox(height: 33),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(AppImages.userPhoto),
                ),
                const SizedBox(height: 10),
                Text("Васильков Кирилл Александрович", style: textTheme.titleMedium),
                Text("+7 922 123 45 67", style: textTheme.titleMedium?.copyWith(color: AppColors.grey)),
              ],
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            const Expanded(child: BalanceCard(value: "1 485,67 ₽", title: "Кошелек ImPay")),
            Container(width: 1, height: 40, color: AppColors.grey),
            const Expanded(child: BalanceCard(value: "5 485,67", title: "Накопленно бонусов")),
          ],
        ),
        const SizedBox(height: 30),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 12, right: 4),
          leading: FloatingActionButton.small(
            heroTag: "#myData",
            backgroundColor: AppColors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {},
            child: SvgPicture.asset(AppIcons.persone),
          ),
          title: Text("Мои данные", style: textTheme.titleMedium),
          trailing: const Icon(Icons.arrow_forward_ios_rounded, color: AppColors.grey),
        ),
        const SizedBox(height: 8),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 12, right: 4),
          leading: FloatingActionButton.small(
            heroTag: "#help",
            backgroundColor: AppColors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {},
            child: SvgPicture.asset(AppIcons.help),
          ),
          title: Text("Помощь", style: textTheme.titleMedium),
        ),
      ]),
    );
  }
}
