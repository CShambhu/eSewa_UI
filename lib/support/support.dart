import 'package:esewa_ui_practice/support/card_II_section.dart';
import 'package:esewa_ui_practice/support/card_section.dart';
import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            color: const Color.fromARGB(255, 46, 63, 70),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 5, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Report issues with a tap!",
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                  Row(
                    children: [
                      Text(
                        "Now you can report issues of any transaction \neasily. Just go to the statement, and press the \n \"Raise Issue\" button below the transaction details.",
                        maxLines: 4,
                        style: TextStyle(fontSize: 13, color: Colors.white70),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.lightGreen,
                        child: Icon(
                          Icons.touch_app,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          //Choose a Service you need help with
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
            child: CardSection(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
            child: CardSectionII(),
          ),
        ],
      ),
    );
  }
}
