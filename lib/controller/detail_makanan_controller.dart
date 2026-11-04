import 'package:get/get.dart';

class DetailMakananController extends GetxController {
  late String namaMakanan;
  late String hargaMakanan;
  late String asalUsul;
  late String gambarMakanan;
  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    namaMakanan = arguments['namaMakanan'];
    hargaMakanan = arguments['hargaMakanan'].toString();
    asalUsul = arguments['asalUsul'];
    gambarMakanan = arguments['gambarMakanan'];
  }
}
