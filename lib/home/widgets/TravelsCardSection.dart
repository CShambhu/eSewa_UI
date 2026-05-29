import 'package:flutter/material.dart';
import 'UtilityWidgets.dart';

class TravelsCardSection extends StatelessWidget {
  const TravelsCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Card(
        color: const Color.fromARGB(255, 28, 37, 41),
        child: Padding(
          padding: const EdgeInsets.only(left: 12, top: 5, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Travels & Ticketing",
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
                crossAxisSpacing: 20,
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
