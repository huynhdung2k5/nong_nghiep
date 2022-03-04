import 'package:get/get.dart';
import 'package:nong_nghiep/scientist/scientistcontroller.dart';

class ScientistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScientistController>(() => ScientistController());
  }
  
}