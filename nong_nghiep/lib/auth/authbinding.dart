import 'package:get/get.dart';
import 'package:nong_nghiep/auth/authcontroller.dart';
import 'package:nong_nghiep/profie/profie_controller.dart';

class AuthBingding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
    Get.lazyPut<ProfieController>(() => ProfieController(), fenix: true);
  }
}