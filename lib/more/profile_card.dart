import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 59, 86, 95),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 220,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  child: Image.asset(
                    "assets/images/girl.png",
                    height: 40,
                    width: 40,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Shambhu Chaudhary",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                              ),
                            ),
                            Container(
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 9, 129, 13),
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.green,
                                    child: Icon(
                                      Icons.check,
                                      size: 12,
                                      color: const Color.fromARGB(
                                        255,
                                        2,
                                        71,
                                        5,
                                      ),
                                    ),
                                  ),

                                  Text("Verified"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "9876543210",
                          style: TextStyle(fontSize: 14, color: Colors.white70),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: 5,

                              children: [
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.green,
                                  child: Icon(
                                    Icons.check,
                                    size: 12,
                                    color: const Color.fromARGB(255, 2, 71, 5),
                                  ),
                                ),

                                Text(
                                  "Active",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "Update KYC",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 5),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.grey,
                              child: Center(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(thickness: 1, color: Colors.red),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 2, right: 15),
            child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(radius: 12, child: Icon(Icons.add)),
                Expanded(
                  child: Text(
                    "LINK BUSINESS ACCOUNT",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Icon(Icons.arrow_forward_ios, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
