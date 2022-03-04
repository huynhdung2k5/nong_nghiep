import 'package:get/get.dart';
import 'package:nong_nghiep/qrcode/qrcodecontroller.dart';

class QRCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QRCodeController>(() => QRCodeController());
  }
  
}