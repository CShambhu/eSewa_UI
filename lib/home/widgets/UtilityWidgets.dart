import 'package:flutter/material.dart';

Widget Utility(IconData icon, String title) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, size: 25, color: Colors.white70),
      const SizedBox(height: 5),

      SizedBox(
        height: 36,
        child: Text(
          title,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.white70, fontSize: 13),
        ),
      ),
    ],
  );
}
