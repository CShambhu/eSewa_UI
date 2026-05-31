import 'package:flutter/material.dart';

Widget cardSection(IconData icon, String title, String description) {
  return Container(
    // height: 100,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 30),
          Text(title, style: TextStyle(fontSize: 14, color: Colors.white70)),
          Text(
            description,
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: Colors.white70),
          ),
        ],
      ),
    ),
  );
}
