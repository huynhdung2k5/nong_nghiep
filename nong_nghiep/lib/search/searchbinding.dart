import 'package:get/get.dart';
import 'package:nong_nghiep/search/searchcontroller.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchController>(() => SearchController());
  }
}