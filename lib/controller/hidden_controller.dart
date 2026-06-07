import 'package:get/get.dart';

class HiddenController extends GetxController {
  RxBool isHidden = true.obs;

  void toggleHidden() {
    isHidden.value = !isHidden.value;
  }
}
