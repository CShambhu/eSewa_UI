import 'package:esewa_ui_practice/controller/auth_controller.dart';
import 'package:esewa_ui_practice/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class LoginMobile extends StatefulWidget {
  LoginMobile({super.key});

  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  bool _checkRemember = true;
  bool _isobscure = true;
  final TextEditingController mobilecontroller = TextEditingController();
  final TextEditingController pincontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  final AuthController controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 60, right: 30),
              child: Row(
                children: [
                  Image.asset("assets/images/esewa.png", height: 30),
                  SizedBox(width: 5),
                  Text(
                    "Sewa",
                    style: TextStyle(fontSize: 45, color: Colors.white),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 49, 64, 71),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.close, size: 35, color: Colors.green),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  Text(
                    "Sign in with",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Card(
                margin: EdgeInsets.all(0),
                color: Color.fromARGB(255, 49, 64, 71),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18, top: 30, right: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              controller.showMobileLogin();
                            },
                            child: Text(
                              "Mobile Number",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              controller.showEmailLogin();
                            },
                            child: Text(
                              "Email Address",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(),

                      SizedBox(height: 20),

                      Form(
                        key: _formkey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "eSewa ID",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Obx(() {
                              if (controller.isMobilelogin.value) {
                                return TextFormField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteractionIfError,
                                  controller: mobilecontroller,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color.fromARGB(255, 62, 81, 90),
                                    hintText: "Mobile Number",

                                    hintStyle: TextStyle(color: Colors.white),
                                  ),
                                  validator: (value) {
                                    if (value == null ||
                                        value.isEmpty ||
                                        value.length != 10) {
                                      return "invalid number";
                                    }
                                    return null;
                                  },
                                );
                              } else {
                                return TextFormField(
                                  controller: emailcontroller,
                                  keyboardType: TextInputType.emailAddress,

                                  autovalidateMode:
                                      AutovalidateMode.onUserInteractionIfError,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color.fromARGB(255, 62, 81, 90),
                                    hintText: "Email Address",
                                    hintStyle: TextStyle(color: Colors.white),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "please enter email";
                                    }
                                    final emailRegex = RegExp(
                                      r'^[^@]+@[^@]+\.[^@]+',
                                    );
                                    if (!emailRegex.hasMatch(value)) {
                                      return 'Please enter a valid email address';
                                    }
                                    return null;
                                  },
                                );
                              }
                            }),
                            SizedBox(height: 20),
                            Text(
                              "MPIN/Password",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                            TextFormField(
                              obscureText: _isobscure,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteractionIfError,
                              controller: pincontroller,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 62, 81, 90),
                                suffixIcon: IconButton(
                                  onPressed: () => setState(() {
                                    _isobscure = !_isobscure;
                                  }),
                                  icon: Icon(
                                    _isobscure
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.white,
                                  ),
                                ),
                                hintText: "Your 4-digit MPIN/Password",
                                hintStyle: TextStyle(color: Colors.white),
                              ),
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    value.length != 4) {
                                  return "invalid number";
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 20),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      value: _checkRemember,
                                      onChanged: (value) {
                                        setState(() {
                                          _checkRemember = value!;
                                        });
                                      },
                                    ),
                                    Text(
                                      "Remember me",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Forgot MPIN?",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(350, 50),
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {
                                if (_formkey.currentState!.validate()) {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Home(),
                                    ),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("Login Successfull"),
                                    ),
                                  );
                                }
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),

                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),

                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.phone_in_talk_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 5),

                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "24*7 Help & Support",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                          "Get quick solutions for eSewa-related queries.",
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 60),

                            Center(
                              child: Text(
                                "Register",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
