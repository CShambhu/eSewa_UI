import 'package:flutter/material.dart';

Widget Utility(IconData icon, String title) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color.fromARGB(255, 46, 61, 68),
          ),
          height: 20,
          width: 20,
          child: Icon(icon, size: 25, color: Colors.white70),
        ),
        const SizedBox(height: 5),
        Text(title, style: TextStyle(color: Colors.white70)),
      ],
    ),
  );
}
