import 'package:esewa_ui_practice/core/constant/app_colors.dart';
import 'package:esewa_ui_practice/core/constant/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'utility_widgets.dart';

class FinancialCardSection extends StatelessWidget {
  const FinancialCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        color: AppColors.cardBg,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 5, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Financial Payments", style: AppTextStyles.sectionTitle),
              GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                children: [
                  Utility(
                    Icons.candlestick_chart_outlined,
                    "Mero Share & DEMAT",
                  ),
                  Utility(Icons.savings_outlined, "SIP"),
                  Utility(Icons.atm_outlined, "ATM Withdraw"),
                  Utility(Icons.credit_card, "Credit Card"),
                  Utility(Icons.account_balance_wallet, "EMI"),
                  Utility(Icons.business_center, "Broker "),
                  Utility(Icons.groups, "Micro Finance"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
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
