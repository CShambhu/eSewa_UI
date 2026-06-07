import 'package:esewa_ui_practice/core/constant/app_colors.dart';
import 'package:esewa_ui_practice/core/constant/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'utility_widgets.dart';

class InsuranceCardSection extends StatelessWidget {
  const InsuranceCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 5, bottom: 0, right: 5),
      child: Card(
        color: AppColors.cardBg,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 5,
            bottom: 10,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Insurance", style: AppTextStyles.sectionTitle),

              GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                children: [
                  Utility(Icons.shield_outlined, "Super Term Life"),
                  Utility(Icons.medical_services_outlined, " Sahara Health"),
                  Utility(Icons.support_agent_outlined, "eSewa Care"),
                  Row(
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
