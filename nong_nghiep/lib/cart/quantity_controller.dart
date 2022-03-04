import 'package:get/get.dart';

class QuantityController extends GetxController {
  final quantity = 1.obs;

  add() {
    quantity(quantity() + 1);
  }

  remove() {
    (quantity > 1)? quantity(quantity() - 1): '';
  }
}