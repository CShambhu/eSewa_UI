import 'package:esewa_ui_practice/core/constant/app_text_styles.dart';
import 'package:flutter/material.dart';

Widget cardSection(IconData icon, String title, String description) {
  return Container(
    // height: 100,
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(width: 1),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 30),
          Text(title, style: AppTextStyles.statementLabel),
          Text(
            description,
            maxLines: 3,
            textAlign: TextAlign.center,
            style: AppTextStyles.gridLabel,
          ),
        ],
      ),
    ),
  );
}
