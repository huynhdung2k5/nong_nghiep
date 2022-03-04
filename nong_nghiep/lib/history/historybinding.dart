import 'package:get/get.dart';
import 'package:nong_nghiep/history/historycontroller.dart';

class HistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HistoryController>(() => HistoryController());
  }
  
}