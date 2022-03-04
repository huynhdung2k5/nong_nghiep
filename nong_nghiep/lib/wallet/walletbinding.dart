import 'package:get/get.dart';
import 'package:nong_nghiep/wallet/walletcontroller.dart';

class WalletBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WalletController>(() => WalletController());
  }
  
}