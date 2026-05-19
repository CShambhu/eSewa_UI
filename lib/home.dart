import 'package:esewa_ui_practice/widgets/UtilityWidgets.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 17, 17, 17),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 46, 61, 68),
        title: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white70,
                      child: Icon(Icons.person_3_outlined, size: 29),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 29),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.green,
                        ),
                        child: Icon(
                          Icons.check,
                          size: 18,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Text("Hi, User", style: TextStyle(color: Colors.white70)),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search, color: Colors.white70, size: 35),
                SizedBox(width: 15),
                Icon(Icons.notifications, color: Colors.white70, size: 35),
                SizedBox(width: 15),
                Icon(Icons.biotech_sharp, color: Colors.white70, size: 35),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
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
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 4,
                        bottom: 4,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.wallet,
                                size: 40,
                                color: Colors.white70,
                              ),
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
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white70,
                                  ),
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
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white70,
                              ),
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
                                Icon(
                                  Icons.call_received,
                                  color: Colors.white70,
                                ),
                                Text(
                                  "Load ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white70,
                                  ),
                                ),
                                Text(
                                  " Money",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.call_received,
                                  color: Colors.white70,
                                ),
                                Text(
                                  "Send ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white70,
                                  ),
                                ),
                                Text(
                                  " Money",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.house, color: Colors.white70),
                                Text(
                                  "Bank ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white70,
                                  ),
                                ),
                                Text(
                                  " Transfer",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.games_outlined,
                                  color: Colors.white70,
                                ),
                                Text(
                                  "Remittance ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white70,
                                  ),
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
            ),
            //STACK END
            SizedBox(height: 50),
            //Utility & Bill Payment Card
            Padding(
              padding: const EdgeInsets.all(5),
              child: Card(
                color: const Color.fromARGB(255, 46, 61, 68),
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

                      // const SizedBox(height: 5),
                      GridView.count(
                        crossAxisCount: 4,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        // mainAxisSpacing: 15,
                        // childAspectRatio: 0.8,
                        children: [
                          Utility(Icons.phone_android, "Topup & Data"),
                          Utility(Icons.electrical_services, "Electricity"),
                          Utility(Icons.water_drop, "Khanepani"),
                          Utility(Icons.wifi, "Internet"),
                          Utility(Icons.house, "Govt. Payment"),
                          Utility(Icons.traffic, "Traffic Fine Payment"),
                          Utility(Icons.school, "Education Fee"),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //Travels & Ticketing Card
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Card(
                color: const Color.fromARGB(255, 46, 61, 68),
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
                        // mainAxisSpacing: 15,
                        // childAspectRatio: 0.8,
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
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //Insurance Card
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
                top: 5,
                bottom: 0,
                right: 5,
              ),
              child: Card(
                color: const Color.fromARGB(255, 46, 61, 68),
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
                        children: [
                          Utility(Icons.shield_outlined, "Super Term Life"),
                          Utility(
                            Icons.medical_services_outlined,
                            " Sahara Health",
                          ),
                          Utility(Icons.support_agent_outlined, "eSewa Care"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //Financial Payments Card
            Padding(
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
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
