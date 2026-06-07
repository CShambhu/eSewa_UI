import 'package:esewa_ui_practice/controller/hidden_controller.dart';
import 'package:esewa_ui_practice/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Balancecard extends StatefulWidget {
  const Balancecard({super.key});

  @override
  State<Balancecard> createState() => _BalancecardState();
}

class _BalancecardState extends State<Balancecard> {
  final HiddenController Bcontroller = Get.put(HiddenController());

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
            color: const Color.fromARGB(255, 28, 37, 41),
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
            color: AppColors.scaffoldBg,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 4, bottom: 4),
              child: Row(
                children: [
                  Icon(Icons.wallet, size: 30, color: Colors.white70),
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
                            Obx(() {
                              return SizedBox(
                                width: 70,
                                child: Text(
                                  Bcontroller.isHidden.value
                                      ? "******"
                                      : "198.25",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white70,
                                  ),
                                ),
                              );
                            }),
                          ],
                        ),
                        Text(
                          "Balance",
                          style: TextStyle(fontSize: 15, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(width: 5),
                  SizedBox(
                    height: 40,
                    width: 60,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(height: 40, width: 1, color: Colors.white24),
                        IconButton(
                          onPressed: () {
                            Bcontroller.toggleHidden();
                          },
                          icon: Obx(() {
                            return Icon(
                              Bcontroller.isHidden.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.white70,
                            );
                          }),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Icon(Icons.badge, color: Colors.white70),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(() {
                            return Text(
                              Bcontroller.isHidden.value ? "225.55" : "******",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white70,
                              ),
                            );
                          }),

                          Text(
                            "Fonepoints",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
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
          top: 58,
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
              color: const Color.fromARGB(255, 28, 37, 41),
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
                          Icons.call_received_rounded,
                          color: Colors.white70,
                        ),
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
                        Icon(Icons.send, color: Colors.white70),
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
                        Icon(Icons.account_balance, color: Colors.white70),
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
                        Icon(
                          Icons.currency_exchange_outlined,
                          color: Colors.white70,
                        ),
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
