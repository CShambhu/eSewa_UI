import 'package:flutter/material.dart';

class Statement extends StatelessWidget {
  const Statement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                color: const Color.fromARGB(255, 38, 51, 56),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 59, 86, 95),

                    borderRadius: BorderRadius.circular(0),
                  ),
                  height: 140,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 5, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 59, 86, 95),

                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 155,
                  width: double.infinity,
                  child: Column(
                    spacing: 20,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          top: 35,
                          right: 15,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.graphic_eq, size: 35),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "NPR 50 spent on May",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Text(
                                    "Finance 360 Overview",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.blueGrey,
                              child: Icon(Icons.arrow_forward),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            // height: 30,
                            width: 300,
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: const Color.fromARGB(
                                  255,
                                  70,
                                  92,
                                  102,
                                ),
                                hintText: "Search Statement",
                                hintStyle: (TextStyle(color: Colors.white70)),
                                suffixIcon: Icon(
                                  Icons.search,
                                  size: 35,
                                  color: Colors.white70,
                                ),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                            child: VerticalDivider(
                              thickness: 1,
                              color: const Color.fromARGB(255, 88, 117, 131),
                            ),
                          ),
                          Icon(Icons.tune, size: 35, color: Colors.white70),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 180),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  height: 498.8,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "MON, May 25",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 168),
                child: Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 10,
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 230, right: 15),
                child: Container(
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
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Text(
                                    "9876543210",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  SizedBox(height: 10),

                                  Text(
                                    "12.07 AM",
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white70,
                                    ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_drop_down,
                                        color: const Color.fromARGB(
                                          255,
                                          214,
                                          18,
                                          18,
                                        ),
                                        size: 35,
                                      ),
                                      Text(
                                        "50.00",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: const Color.fromARGB(
                                            255,
                                            214,
                                            18,
                                            18,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 35,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: const Color.fromARGB(
                                        255,
                                        69,
                                        101,
                                        112,
                                      ),
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
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
