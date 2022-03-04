import 'package:get/get.dart';
import 'package:nong_nghiep/dashboard/dashboardcontroller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
  }
}