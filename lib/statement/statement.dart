import 'package:esewa_ui_practice/statement/balanceSection.dart';
import 'package:esewa_ui_practice/statement/topupSection.dart';
import 'package:flutter/material.dart';

class Statement extends StatelessWidget {
  const Statement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 60,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 38, 51, 56),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 59, 86, 95),

                      borderRadius: BorderRadius.circular(0),
                    ),
                    height: 140,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5, right: 15),
                  child: Balance(),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 180),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(0),
                    ),
                    height: 580,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "MON, May 25",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 168),
                  child: Center(child: DropdownArrow()),
                ),

                //TOPUP balance card
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 230, right: 15),
                  child: topupSection(),
                ),
                //TOPUP balance card end
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DropdownArrow extends StatelessWidget {
  const DropdownArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: CircleAvatar(
        backgroundColor: Colors.green,
        radius: 10,
        child: Icon(Icons.keyboard_arrow_down, size: 20, color: Colors.white70),
      ),
    );
  }
}
