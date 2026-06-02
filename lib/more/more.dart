import 'package:esewa_ui_practice/more/my_account_widgets.dart';
import 'package:esewa_ui_practice/more/profile_card.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                padding: const EdgeInsets.only(left: 15, top: 5, right: 15),
                child: ProfileCard(),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Container(
                  height: 450,
                  color: const Color.fromARGB(255, 59, 86, 95),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          "My Account",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                      myAccount(
                        Icons.handshake,
                        "Business Account",
                        "View your associated business account",
                      ),
                      myAccount(
                        Icons.calendar_month,
                        "My Calendar",
                        "View all your events,perfectly organized in one place.",
                      ),
                      myAccount(
                        Icons.traffic,
                        "Transaction Limit",
                        "View your transaction limit",
                      ),
                      myAccount(
                        Icons.handshake,
                        "Devices & Credentials",
                        "Manage your devices, credentials & notifications IDs",
                      ),
                      myAccount(
                        Icons.handshake,
                        "Finance360",
                        "Manage your finances with eSewa",
                      ),
                      myAccount(
                        Icons.handshake,
                        "Bank Accounts",
                        "Manage your saved and linked bank accounts",
                      ),
                      myAccount(
                        Icons.handshake,
                        "My Payments",
                        "View your saved & scheduled payments",
                      ),
                    ],
                  ),
                ),
              ),
              //TOPUP balance card end
            ],
          ),
        ],
      ),
    );
  }
}
