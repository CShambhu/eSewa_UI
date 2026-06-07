import 'package:esewa_ui_practice/core/constant/app_colors.dart';
import 'package:esewa_ui_practice/core/constant/app_text_styles.dart';
import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.container,

        borderRadius: BorderRadius.circular(20),
      ),
      height: 155,
      width: double.infinity,
      child: Column(
        // spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 35, right: 15),
            child: Row(
              children: [
                Icon(
                  Icons.graphic_eq,
                  size: 35,
                  color: AppColors.textSecondary,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "NPR 50 spent on May",
                        style: AppTextStyles.statementLabel,
                      ),
                      Text(
                        "Finance 360 Overview",
                        style: AppTextStyles.statementLabel,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: AppColors.circleAvatar,
                  child: Icon(Icons.arrow_forward, color: AppColors.success),
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                // height: 30,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: const Color.fromARGB(255, 70, 92, 102),
                    hintText: "Search Statement",
                    hintStyle: (TextStyle(color: AppColors.textSecondary)),
                    suffixIcon: Icon(
                      Icons.search,
                      size: 35,
                      color: AppColors.textSecondary,
                    ),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
                child: VerticalDivider(
                  thickness: 1,
                  color: const Color.fromARGB(255, 88, 117, 131),
                ),
              ),
              Icon(Icons.tune, size: 35, color: Colors.white70),
            ],
          ),
        ],
      ),
    );
  }
}
