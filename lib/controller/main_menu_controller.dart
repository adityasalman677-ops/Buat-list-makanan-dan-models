import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/menu/home_page.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/menu/history_page.dart';
import 'package:flutter_application_1/menu/profile_page.dart';

class MainMenuController extends GetxController {
  final RxInt selctedIndex = 0.obs;

  void changePage(int index) {
    selctedIndex.value = index;
  }

  List<Widget> ListPages = [HomePage(), HistoryPage(), ProfilePage()];
}
