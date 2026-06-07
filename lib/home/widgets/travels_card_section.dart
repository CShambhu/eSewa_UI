import 'package:esewa_ui_practice/core/constant/app_colors.dart';
import 'package:esewa_ui_practice/core/constant/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'utility_widgets.dart';

class TravelsCardSection extends StatelessWidget {
  const TravelsCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Card(
        color: AppColors.cardBg,
        child: Padding(
          padding: const EdgeInsets.only(left: 12, top: 5, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Travels & Ticketing", style: AppTextStyles.sectionTitle),
              GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 20,
                padding: EdgeInsets.zero,
                children: [
                  Utility(Icons.flight, "Airlines"),
                  Utility(Icons.flight_takeoff, "Intl Airlines"),
                  Utility(Icons.hotel, "Hotels"),
                  Utility(Icons.directions_bus, "Bus Ticket"),
                  Utility(Icons.movie, "Movies"),
                  Utility(Icons.tram, "Cable Car"),
                  Utility(Icons.event, "Events"),
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
