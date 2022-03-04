import 'package:get/get.dart';
import 'package:nong_nghiep/voucher/vouchercontroller.dart';

class VoucherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VoucherController>(() => VoucherController());
  }
}