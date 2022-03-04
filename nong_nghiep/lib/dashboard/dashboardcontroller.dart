import 'package:get/get.dart';

class DashboardController extends GetxController {
    int tabIndex = 0;

  void changeTabindex(int index){
    tabIndex = index;
    update();
  }
}