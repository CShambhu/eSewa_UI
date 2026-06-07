import 'package:esewa_ui_practice/core/constant/app_colors.dart';
import 'package:esewa_ui_practice/core/constant/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'utility_widgets.dart'; // your Utility widget file

class UtilityCardSection extends StatelessWidget {
  const UtilityCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        color: AppColors.cardBg,
        child: Padding(
          padding: const EdgeInsets.only(left: 12, top: 5, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Utility & Bill Payments",
                style: AppTextStyles.sectionTitle,
              ),

              GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                padding: EdgeInsets.zero,
                children: [
                  Utility(Icons.phone_android, "Topup & Data"),
                  Utility(Icons.electrical_services, "Electricity"),
                  Utility(Icons.water_drop, "Khanepani"),
                  Utility(Icons.wifi, "Internet"),
                  Utility(Icons.house, "Govt. Payment"),
                  Utility(Icons.traffic, "Traffic Fine Payment"),
                  Utility(Icons.school, "Education Fee"),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.circleAvatar,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.success,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
