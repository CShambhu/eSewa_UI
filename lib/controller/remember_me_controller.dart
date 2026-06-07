import 'package:get/get.dart';

class CheckController extends GetxController {
  RxBool ischecked = false.obs;

  void toggleCheck() {
    ischecked.value = !ischecked.value;
  }
}
