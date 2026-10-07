import 'package:get/get.dart';

class ConfirmRegController extends GetxController {
  late String nama;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;
    nama = arguments['name'];
  }
}
