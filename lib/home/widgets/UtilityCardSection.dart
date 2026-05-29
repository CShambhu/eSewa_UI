import 'package:flutter/material.dart';
import 'UtilityWidgets.dart'; // your Utility widget file

class UtilityCardSection extends StatelessWidget {
  const UtilityCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        color: const Color.fromARGB(255, 28, 37, 41),
        child: Padding(
          padding: const EdgeInsets.only(left: 12, top: 5, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Utility & Bill Payments",
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
                crossAxisSpacing: 10,
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
