import 'package:esewa_ui_practice/core/constant/app_colors.dart';
import 'package:esewa_ui_practice/core/constant/app_text_styles.dart';
import 'package:esewa_ui_practice/support/card_widgets.dart';
import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.container,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Choose a service you need help with",
              style: AppTextStyles.sectionTitle,
            ),
            GridView.count(
              padding: EdgeInsets.only(top: 15),
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 15,
              mainAxisSpacing: 20,
              children: [
                cardSection(
                  Icons.verified_user,
                  "KYC",
                  "KYC not verified \n Document already ...",
                ),
                cardSection(
                  Icons.account_balance_wallet,
                  "Load Money",
                  "Mistake load \n Amount not creadited",
                ),
                cardSection(
                  Icons.phone_android,
                  "MPIN/ Password",
                  "Forgot MPIN / \n Password, OTP not ...",
                ),
                cardSection(
                  Icons.swap_horiz,
                  "Transaction",
                  "Limitation Inquiry \n Limitation exceeded",
                ),
              ],
            ),
            const SizedBox(height: 10),

            Divider(),
            const SizedBox(height: 20),
            Center(child: Text("View All", style: AppTextStyles.viewALl)),
          ],
        ),
      ),
    );
  }
}
