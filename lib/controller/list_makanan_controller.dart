import 'package:flutter_application_1/models/makanan_models.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
  // kita buat data datanya
  List<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: "Soto Ayam",
      hargaMakanan: "10.000",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLR4MpKLuCJgG5Ddy5mJdSpuNpdQcMkDYV0MKh8jJxUg&s=10)",
      asalUsul: "Soto Ayam khas Kudus, Jawa Tengah. Menurut cerita yang beredar, soto di Kudus memakai daging kerbau, tetapi diganti ayam sebagai bentuk toleransi kepada umat Hindu, sesuai ajaran Sunan Kudus.",
    ),

    MakananModel(
      namaMakanan: "Lentog",
      hargaMakanan: "80.000",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7IctHKMEn13yohkfoTyfD_NNRTwOvW8PHAt0v0nMrpA&s=10)",
      asalUsul: "Lentog berasal dari Kudus, Jawa Tengah. Nama lentog berasal dari kata lontong, disajikan dengan sayur lodeh nangka muda, tahu, tempe, dan sambal.",
    ),

    MakananModel(
      namaMakanan: "Pindang Kerbau",
      hargaMakanan: "20.000",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfkyuXYPsffUu06VQVyPOEqWti2eZCQKDIXm4RXuvZDg&s=10",
      asalUsul: "Pindang Kerbau adalah masakan khas Kudus, Jawa Tengah, berupa daging kerbau berkuah dengan bumbu rempah dan kluwek. Dipakai daging kerbau, bukan sapi, karena tradisi toleransi masyarakat Kudus.",
    ),

    MakananModel(
      namaMakanan: "Jenang",
      hargaMakanan: "15.000",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiwJ4llazZfm183hLfhCmrHvNqusJ0uH37O65jJAGbdA&s=10",
      asalUsul: "Jenang Kudus adalah makanan manis tradisional dari Kudus, Jawa Tengah, terbuat dari tepung beras ketan, santan, dan gula merah. Sampai sekarang menjadi oleh-oleh khas Kudus.",
    ),

    MakananModel(
      namaMakanan: "bolang baling",
      hargaMakanan: "5.000",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8cPHrnnIjHL0JPxahp_TzwP-P-KgODdtV6kwtU9g02g&s=10",
      asalUsul: "Bolang baling adalah jajanan tradisional Jawa Tengah. Isi bagian ini sesuai sumber yang kamu pakai.",
    ),
    // dll
  ];
}
