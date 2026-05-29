import 'package:esewa_ui_practice/home/widgets/BalanceCard.dart';
import 'package:esewa_ui_practice/home/widgets/FinancialCardSection.dart';
import 'package:esewa_ui_practice/home/widgets/InsuranceCardSection.dart';
import 'package:esewa_ui_practice/home/widgets/TravelsCardSection.dart';
import 'package:esewa_ui_practice/home/widgets/UtilityCardSection.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Balancecard(),
          //STACK END
          SizedBox(height: 32),
          //Utility & Bill Payment Card
          UtilityCardSection(),
          //Travels & Ticketing Card
          TravelsCardSection(),
          //Insurance Card
          InsuranceCardSection(),
          //Financial Payments Card
          FinancialCardSection(),
        ],
      ),
    );
  }
}
