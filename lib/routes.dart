import 'package:flutter_application_1/pages/confirm_reg_page.dart';
import 'package:flutter_application_1/pages/login1_page.dart';
import 'package:flutter_application_1/pages/detail_makanan_page.dart';
import 'package:flutter_application_1/pages/list_makanan_page.dart';
import 'package:flutter_application_1/pages/menu_drawer.dart';
import 'package:flutter_application_1/loginclone-page.dart';
import 'package:flutter_application_1/pages/registration_rage_page.dart';
import 'package:flutter_application_1/pages/main_menu_page.dart'
    hide ListMakananPage;
import 'package:get/get.dart';

class Routes {
  // list variabel nama halaman
  static const String registration = "/registration";
  static const String menu_drawer = "/menu_drawer";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = "/detail_makanan";
  static const String main_menu = "/main_menu";
  static const String login = "/login";
  static const String loginclone = "/loginclone";

  // others pages here

  // untuk kita daftarkan di main dart, isinya array page yang kita punya
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(name: detail_makanan, page: () => DetailMakananPage()),
    GetPage(name: main_menu, page: () => MainMenuPage()),
    GetPage(name: menu_drawer, page: () => MenuDrawer()),
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: loginclone, page: () => LoginClone()),
  ];
}
