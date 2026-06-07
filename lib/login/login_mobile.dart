import 'package:esewa_ui_practice/controller/auth_controller.dart';
import 'package:esewa_ui_practice/controller/hidden_controller.dart';
import 'package:esewa_ui_practice/controller/remember_me_controller.dart';
import 'package:esewa_ui_practice/core/constant/app_colors.dart';
import 'package:esewa_ui_practice/login/logoSection.dart';
import 'package:esewa_ui_practice/login/mobile_email_section.dart';
import 'package:esewa_ui_practice/login/welcome_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginMobile extends StatefulWidget {
  const LoginMobile({super.key});

  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  final TextEditingController mobilecontroller = TextEditingController();
  final TextEditingController pincontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  final AuthController controller = Get.put(AuthController());
  final HiddenController hiddenController = Get.put(HiddenController());
  final CheckController checkController = Get.put(CheckController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 60, right: 30),
              child: LogoSection(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Welcome(),
            ),
            SizedBox(height: 25),
            MobileEmail(
              controller: controller,
              formkey: _formkey,
              mobilecontroller: mobilecontroller,
              emailcontroller: emailcontroller,
              hiddenController: hiddenController,
              pincontroller: pincontroller,
              checkController: checkController,
            ),
          ],
        ),
      ),
    );
  }
}
