import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/esewa.png", height: 30),
        SizedBox(width: 5),
        Text("Sewa", style: TextStyle(fontSize: 45, color: Colors.white)),
        Spacer(),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 49, 64, 71),
            borderRadius: BorderRadius.circular(15),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.close, size: 35, color: Colors.green),
          ),
        ),
      ],
    );
  }
}
