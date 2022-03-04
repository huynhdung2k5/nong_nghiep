import 'package:get/get.dart';
import 'package:nong_nghiep/censorship/censorshipcontroller.dart';

class CensorshipBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CensorshipController>(() => CensorshipController());
  }
}