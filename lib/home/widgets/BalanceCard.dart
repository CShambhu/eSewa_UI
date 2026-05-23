import 'package:flutter/material.dart';

class Balancecard extends StatelessWidget {
  const Balancecard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 119,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            color: const Color.fromARGB(255, 46, 61, 68),
          ),
        ),
        //Upper CARD
        Padding(
          padding: const EdgeInsets.all(5),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            color: const Color.fromARGB(221, 17, 17, 17),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 4, bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.wallet, size: 40, color: Colors.white70),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "NPR",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white70,
                              ),
                            ),
                            SizedBox(width: 3),
                            Text(
                              "198.25",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Balance",
                          style: TextStyle(fontSize: 15, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(Icons.visibility, color: Colors.white70),

                  Row(
                    children: [
                      Icon(Icons.badge, color: Colors.white70),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "225.55",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            "Fonepoints",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white70),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        // Bottom CARD
        Positioned(
          top: 75,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              color: const Color.fromARGB(255, 46, 61, 68),
              // color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 5,
                  bottom: 10,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.call_received, color: Colors.white70),
                        Text(
                          "Load ",
                          style: TextStyle(fontSize: 15, color: Colors.white70),
                        ),
                        Text(
                          " Money",
                          style: TextStyle(fontSize: 15, color: Colors.white70),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.call_received, color: Colors.white70),
                        Text(
                          "Send ",
                          style: TextStyle(fontSize: 15, color: Colors.white70),
                        ),
                        Text(
                          " Money",
                          style: TextStyle(fontSize: 15, color: Colors.white70),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.house, color: Colors.white70),
                        Text(
                          "Bank ",
                          style: TextStyle(fontSize: 15, color: Colors.white70),
                        ),
                        Text(
                          " Transfer",
                          style: TextStyle(fontSize: 15, color: Colors.white70),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.games_outlined, color: Colors.white70),
                        Text(
                          "Remittance ",
                          style: TextStyle(fontSize: 15, color: Colors.white70),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
