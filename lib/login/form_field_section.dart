import 'package:esewa_ui_practice/controller/auth_controller.dart';
import 'package:esewa_ui_practice/controller/hidden_controller.dart';
import 'package:esewa_ui_practice/controller/remember_me_controller.dart';
import 'package:esewa_ui_practice/core/constant/app_colors.dart';
import 'package:esewa_ui_practice/core/constant/app_text_styles.dart';
import 'package:esewa_ui_practice/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class FormFields extends StatelessWidget {
  const FormFields({
    super.key,
    required GlobalKey<FormState> formkey,
    required this.controller,
    required this.mobilecontroller,
    required this.emailcontroller,
    required this.hiddenController,
    required this.pincontroller,
    required this.checkController,
  }) : _formkey = formkey;

  final GlobalKey<FormState> _formkey;
  final AuthController controller;
  final TextEditingController mobilecontroller;
  final TextEditingController emailcontroller;
  final HiddenController hiddenController;
  final TextEditingController pincontroller;
  final CheckController checkController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("eSewa ID", style: AppTextStyles.listItemTitle),
          Obx(() {
            if (controller.isMobilelogin.value) {
              return TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                autovalidateMode: AutovalidateMode.onUserInteractionIfError,
                controller: mobilecontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.inputFill,
                  hintText: "Mobile Number",

                  hintStyle: TextStyle(color: AppColors.textPrimary),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty || value.length != 10) {
                    return "invalid number";
                  }
                  return null;
                },
              );
            } else {
              return TextFormField(
                controller: emailcontroller,
                keyboardType: TextInputType.emailAddress,

                autovalidateMode: AutovalidateMode.onUserInteractionIfError,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.inputFill,
                  hintText: "Email Address",
                  hintStyle: TextStyle(color: AppColors.textPrimary),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter email";
                  }
                  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                  if (!emailRegex.hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              );
            }
          }),
          SizedBox(height: 20),
          Text("MPIN/Password", style: AppTextStyles.loginBody),
          Obx(() {
            return TextFormField(
              obscureText: hiddenController.isHidden.value,
              autovalidateMode: AutovalidateMode.onUserInteractionIfError,
              controller: pincontroller,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.inputFill,
                suffixIcon: IconButton(
                  onPressed: () {
                    hiddenController.toggleHidden();
                  },
                  icon: Icon(
                    hiddenController.isHidden.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: AppColors.textPrimary,
                  ),
                ),
                hintText: "Your 4-digit MPIN/Password",
                hintStyle: TextStyle(color: AppColors.textPrimary),
              ),
              validator: (value) {
                if (value == null || value.isEmpty || value.length != 4) {
                  return "invalid number";
                }
                return null;
              },
            );
          }),
          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Obx(() {
                    return Checkbox(
                      value: checkController.ischecked.value,
                      onChanged: (value) {
                        checkController.toggleCheck();
                      },
                    );
                  }),
                  Text(
                    "Remember me",
                    style: TextStyle(color: AppColors.textPrimary),
                  ),
                ],
              ),
              Text(
                "Forgot MPIN?",
                style: TextStyle(color: AppColors.textPrimary),
              ),
            ],
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(350, 50),
              backgroundColor: AppColors.success,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              if (_formkey.currentState!.validate()) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Login Successfull")));
              }
            },
            child: Text("Login", style: AppTextStyles.loginBody),
          ),
          SizedBox(height: 20),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: AppColors.textPrimary, width: 1),
            ),

            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Icon(
                    Icons.phone_in_talk_outlined,
                    color: AppColors.textPrimary,
                  ),
                  SizedBox(width: 5),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "24*7 Help & Support",
                        style: AppTextStyles.loginSmall,
                      ),
                      Text(
                        style: AppTextStyles.loginSmall,
                        "Get quick solutions for eSewa-related queries.",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 60),

          Center(child: Text("Register", style: AppTextStyles.loginAction)),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
