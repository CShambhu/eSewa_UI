import 'package:esewa_ui_practice/core/constant/app_colors.dart';
import 'package:esewa_ui_practice/core/constant/app_text_styles.dart';
import 'package:flutter/material.dart';

class TopupSection extends StatelessWidget {
  const TopupSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                CircleAvatar(radius: 20, child: Icon(Icons.phone)),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ncell topup to", style: AppTextStyles.topUp),
                      Text("9876543210", style: AppTextStyles.topUp),
                      SizedBox(height: 10),

                      Text("12.07 AM", style: AppTextStyles.timeBalance),
                      SizedBox(height: 20),

                      Row(
                        children: [
                          Text("BALANCE", style: AppTextStyles.timeBalance),
                          Text(" 148.25", style: AppTextStyles.amount),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 110,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_drop_down,
                            color: AppColors.danger,
                            size: 35,
                          ),
                          Text("50.00", style: AppTextStyles.debitAmount),
                        ],
                      ),
                      Container(
                        height: 35,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.circleAvatar,
                        ),
                        child: Center(
                          child: Text(
                            "REDO",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
