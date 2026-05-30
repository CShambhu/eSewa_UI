import 'package:esewa_ui_practice/controller/auth_controller.dart';
import 'package:esewa_ui_practice/home/widgets/HomeContent.dart';
import 'package:esewa_ui_practice/more/more.dart';
import 'package:esewa_ui_practice/search.dart';
import 'package:esewa_ui_practice/statement/statement.dart';
import 'package:esewa_ui_practice/support/support.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final BottomNavController navController = Get.put(BottomNavController());
  // int _selectedIndex = 0;
  final List<String> _titles = ["", "Statement", "Support", "More"];

  final List<Widget> _screens = [HomeContent(), Statement(), Support(), More()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 17, 17, 17),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 38, 51, 56),
        title: Obx(() {
          int index = navController.selectedIndex.value;

          if (index == 0) {
            return Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white70,
                          child: Icon(Icons.person_3_outlined, size: 29),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 29),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.green,
                            ),
                            child: Icon(
                              Icons.check,
                              size: 18,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Hi, User",
                      style: TextStyle(fontSize: 20, color: Colors.white70),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.to(Search());
                      },
                      icon: Icon(Icons.search, color: Colors.white70, size: 32),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.white70,
                        size: 32,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.android,
                        color: Colors.white70,
                        size: 32,
                      ),
                    ),
                  ],
                ),
              ],
            );
          }

          return Text(
            _titles[index],
            style: TextStyle(color: Colors.white, fontSize: 22),
          );
        }),
      ),
      body: Obx(() {
        return _screens[navController.selectedIndex.value];
      }),

      bottomNavigationBar: Obx(
        () => GNav(
          selectedIndex: navController.selectedIndex.value,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          // tabBackgroundColor: Colors.grey,
          backgroundColor: const Color.fromARGB(255, 28, 37, 41),
          activeColor: Colors.blueGrey,
          color: Colors.white,
          style: GnavStyle.oldSchool,
          textSize: 13,

          onTabChange: (index) {
            navController.changeIndex(index);
          },
          tabs: [
            GButton(icon: Icons.home, text: "Home"),
            GButton(icon: Icons.receipt_long, text: "Statement"),
            GButton(icon: Icons.info_outline, text: "Support"),
            GButton(icon: Icons.menu, text: "More"),
          ],
        ),
      ),
    );
  }
}
