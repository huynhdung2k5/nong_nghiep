import 'package:get/get.dart';
import 'package:nong_nghiep/cart/cartcontroller.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CartController());
  }
}