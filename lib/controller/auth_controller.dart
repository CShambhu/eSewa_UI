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

class HiddenController extends GetxController {
  RxBool isHidden = true.obs;

  void toggleHidden() {
    isHidden.value = !isHidden.value;
  }
}

class CheckController extends GetxController {
  RxBool ischecked = false.obs;

  void toggleCheck() {
    ischecked.value = !ischecked.value;
  }
}

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
