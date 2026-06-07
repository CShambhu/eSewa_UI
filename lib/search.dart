import 'package:esewa_ui_practice/core/constant/app_colors.dart';
import 'package:esewa_ui_practice/core/constant/app_text_styles.dart';
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
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.textSecondary, size: 25),
        title: Text("Search", style: TextStyle(color: AppColors.textSecondary)),
        backgroundColor: AppColors.appBarBg,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
        child: SingleChildScrollView(
          child: Column(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: AppColors.inputFill,
                  hintText: "Search anything",
                  hintStyle: (TextStyle(color: Colors.white70)),
                  suffixIcon: Icon(
                    Icons.search,
                    size: 35,
                    color: AppColors.textSecondary,
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              Text("Recent Search", style: AppTextStyles.loginBody),

              Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: AppColors.textSecondary,
                  child: Icon(Icons.manage_search, size: 120),
                ),
              ),
              Center(
                child: Text(
                  "No recent search ",
                  style: AppTextStyles.loginBody,
                ),
              ),
              Center(
                child: Text(
                  "You haven't searched yet right now",
                  style: AppTextStyles.loginBody,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
