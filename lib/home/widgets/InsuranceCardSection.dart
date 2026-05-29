import 'package:flutter/material.dart';

import 'UtilityWidgets.dart';

class InsuranceCardSection extends StatelessWidget {
  const InsuranceCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 5, bottom: 0, right: 5),
      child: Card(
        color: const Color.fromARGB(255, 28, 37, 41),
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
              Text(
                "Insurance",
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
                  Utility(Icons.shield_outlined, "Super Term Life"),
                  Utility(Icons.medical_services_outlined, " Sahara Health"),
                  Utility(Icons.support_agent_outlined, "eSewa Care"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
