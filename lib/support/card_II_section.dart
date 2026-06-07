import 'package:esewa_ui_practice/core/constant/app_colors.dart';
import 'package:esewa_ui_practice/core/constant/app_text_styles.dart';
import 'package:flutter/material.dart';

class CardSectionII extends StatelessWidget {
  const CardSectionII({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 59, 86, 95),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Help & FAQs", style: AppTextStyles.loginBody),
            Container(
              // height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.container,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(radius: 20, child: Icon(Icons.chat)),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My eSewa Account is Temporarily Blocked.",
                                maxLines: 2,
                                style: AppTextStyles.statementLabel,
                              ),
                              Text(
                                "If there is a log in attempt in your account  with wrong MPIN, you ID will be temporarily blocked for security reasons.",
                                maxLines: 3,
                                textAlign: TextAlign.left,
                                style: AppTextStyles.gridLabel,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "VIEW DETAILS",
                                style: AppTextStyles.viewALl,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Divider(),
          ],
        ),
      ),
    );
  }
}
