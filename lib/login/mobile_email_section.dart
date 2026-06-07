import 'package:esewa_ui_practice/controller/auth_controller.dart';
import 'package:esewa_ui_practice/controller/hidden_controller.dart';
import 'package:esewa_ui_practice/controller/remember_me_controller.dart';
import 'package:esewa_ui_practice/core/constant/app_colors.dart';
import 'package:esewa_ui_practice/core/constant/app_text_styles.dart';
import 'package:esewa_ui_practice/login/form_field_section.dart';
import 'package:flutter/material.dart';

class MobileEmail extends StatelessWidget {
  const MobileEmail({
    super.key,
    required this.controller,
    required GlobalKey<FormState> formkey,
    required this.mobilecontroller,
    required this.emailcontroller,
    required this.hiddenController,
    required this.pincontroller,
    required this.checkController,
  }) : _formkey = formkey;

  final AuthController controller;
  final GlobalKey<FormState> _formkey;
  final TextEditingController mobilecontroller;
  final TextEditingController emailcontroller;
  final HiddenController hiddenController;
  final TextEditingController pincontroller;
  final CheckController checkController;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      color: AppColors.cardBg,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 18, top: 30, right: 18),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    controller.showMobileLogin();
                  },
                  child: Text("Mobile Number", style: AppTextStyles.loginBody),
                ),
                TextButton(
                  onPressed: () {
                    controller.showEmailLogin();
                  },
                  child: Text("Email Address", style: AppTextStyles.loginBody),
                ),
              ],
            ),
            Divider(),

            SizedBox(height: 20),

            FormFields(
              formkey: _formkey,
              controller: controller,
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
