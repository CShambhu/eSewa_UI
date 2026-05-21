import 'package:get/get.dart';

class AuthController extends GetxController {
  final isMobilelogin = true.obs;

  void showMobileLogin() {
    isMobilelogin.value = true;
  }

  void showEmailLogin() {
    isMobilelogin.value = false;
  }
}
