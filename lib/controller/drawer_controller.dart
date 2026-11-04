import 'package:get/get.dart';

class DrawerController extends GetxController {
  var currentIndex = 0.obs;

  void changePage(int index) {
    currentIndex.value = index;
    Get.back();
  }
}
