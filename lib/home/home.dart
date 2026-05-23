import 'package:esewa_ui_practice/home/widgets/BalanceCard.dart';
import 'package:esewa_ui_practice/home/widgets/FinancialCardSection.dart';
import 'package:esewa_ui_practice/home/widgets/InsuranceCardSection.dart';
import 'package:esewa_ui_practice/home/widgets/TravelsCardSection.dart';
import 'package:esewa_ui_practice/home/widgets/UtilityCardSection.dart';
import 'package:esewa_ui_practice/home/widgets/UtilityWidgets.dart';
import 'package:esewa_ui_practice/more/more.dart';
import 'package:esewa_ui_practice/statement/statement.dart';
import 'package:esewa_ui_practice/support/support.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [Home(), Statement(), Support(), More()];
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
            Balancecard(),
            //STACK END
            SizedBox(height: 50),
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
      ),

      bottomNavigationBar: GNav(
        selectedIndex: _selectedIndex,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        // tabBackgroundColor: Colors.grey,
        backgroundColor: const Color.fromARGB(255, 46, 61, 68),
        activeColor: Colors.white,
        color: Colors.white,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        tabs: [
          GButton(icon: Icons.home, text: "Home"),
          GButton(icon: Icons.receipt_long, text: "Statement"),
          GButton(icon: Icons.support, text: "Support"),
          GButton(icon: Icons.more_horiz, text: "More"),
        ],
      ),
    );
  }
}
