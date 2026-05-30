import 'package:esewa_ui_practice/home/home.dart';
import 'package:esewa_ui_practice/home/widgets/HomeContent.dart';
import 'package:esewa_ui_practice/login/login_mobile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: LoginMobile(),
    );
  }
}
