import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var selectedIndex = 0.obs;

  RxString dropdownValue = 'one'.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
