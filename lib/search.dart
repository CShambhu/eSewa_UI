import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 44, 60, 68),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white70, size: 25),
        title: Text("Search", style: TextStyle(color: Colors.white70)),
        backgroundColor: const Color.fromARGB(255, 37, 48, 53),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 61, 81, 90),
                hintText: "Search anything",
                hintStyle: (TextStyle(color: Colors.white70)),
                suffixIcon: Icon(Icons.search, size: 35, color: Colors.white70),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            Text(
              "Recent Search",
              style: TextStyle(fontSize: 17, color: Colors.white70),
            ),

            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.grey,
                child: Icon(Icons.manage_search, size: 120),
              ),
            ),
            Center(
              child: Text(
                "No recent search ",
                style: TextStyle(fontSize: 17, color: Colors.white70),
              ),
            ),
            Center(
              child: Text(
                "You haven't searched yet right now",
                style: TextStyle(fontSize: 15, color: Colors.white70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
