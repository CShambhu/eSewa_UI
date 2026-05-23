import 'package:flutter/material.dart';

import 'UtilityWidgets.dart';

class FinancialCardSection extends StatelessWidget {
  const FinancialCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        color: const Color.fromARGB(255, 46, 61, 68),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 5, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Financial Payments",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70,
                ),
              ),
              GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),

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
                        backgroundColor: Color.fromARGB(255, 57, 75, 83),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green,
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
