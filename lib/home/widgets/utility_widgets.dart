import 'package:esewa_ui_practice/core/constant/app_text_styles.dart';
import 'package:flutter/material.dart';

Widget Utility(IconData icon, String title) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, size: 25, color: Colors.white70),
      const SizedBox(height: 5),

      SizedBox(
        height: 37,
        child: Text(
          title,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.widgetIconsText,
        ),
      ),
    ],
  );
}
