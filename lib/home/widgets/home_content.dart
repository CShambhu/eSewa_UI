import 'package:esewa_ui_practice/home/widgets/balance_card.dart';
import 'package:esewa_ui_practice/home/widgets/financial_card_section.dart';
import 'package:esewa_ui_practice/home/widgets/insurance_card_section.dart';
import 'package:esewa_ui_practice/home/widgets/travels_card_section.dart';
import 'package:esewa_ui_practice/home/widgets/utility_card_section.dart';
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
