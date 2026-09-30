import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasil = 0.obs;

  // method tambah kurang kali dan bagi
  void tambah(int angka1, int angka2) {
    int hasilTambah = angka1 + angka2;
    hasil.value = hasilTambah;
  }

  void kurang(int angka1, int angka2) {
    int hasilKurang = angka1 - angka2;
    hasil.value = hasilKurang;
  }

  void kali(int angka1, int angka2) {
    int hasilKali = angka1 * angka2;
    hasil.value = hasilKali;
  }

  void bagi(int angka1, int angka2) {
    if (angka2 != 0) {
      double hasilBagi = angka1 / angka2;
      hasil.value = hasilBagi.toInt();
    }
  }

  void reset() {
    hasil.value = 0;
  }
}
