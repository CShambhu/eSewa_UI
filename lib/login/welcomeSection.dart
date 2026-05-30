import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Welcome", style: TextStyle(fontSize: 40, color: Colors.white)),
        Text(
          "Sign in with",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ],
    );
  }
}
