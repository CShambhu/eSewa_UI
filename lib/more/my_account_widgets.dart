import 'package:esewa_ui_practice/core/constant/app_colors.dart';
import 'package:esewa_ui_practice/core/constant/app_text_styles.dart';
import 'package:flutter/material.dart';

Widget myAccount(IconData icon, String title, String subtitle) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 15,
          children: [
            Icon(icon, size: 35, color: AppColors.textSecondary),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTextStyles.listItemTitle),
                Text(subtitle, style: AppTextStyles.listItemSubtitle),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
