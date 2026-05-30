import 'package:flutter/material.dart';

class topupSection extends StatelessWidget {
  const topupSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 59, 86, 95),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(radius: 20, child: Icon(Icons.phone)),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ncell topup to",
                        style: TextStyle(fontSize: 16, color: Colors.white70),
                      ),
                      Text(
                        "9876543210",
                        style: TextStyle(fontSize: 16, color: Colors.white70),
                      ),
                      SizedBox(height: 10),

                      Text(
                        "12.07 AM",
                        style: TextStyle(fontSize: 11, color: Colors.white70),
                      ),
                      SizedBox(height: 20),

                      Row(
                        children: [
                          Text(
                            "BALANCE",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            " 148.25",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 110,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_drop_down,
                            color: const Color.fromARGB(255, 214, 18, 18),
                            size: 35,
                          ),
                          Text(
                            "50.00",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 214, 18, 18),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 35,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 69, 101, 112),
                        ),
                        child: Center(
                          child: Text(
                            "REDO",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
