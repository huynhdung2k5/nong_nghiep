import 'package:get/get.dart';
import 'package:nong_nghiep/profie/profie_controller.dart';

class ProfieBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfieController>(() => ProfieController(), fenix: true);
  }
}