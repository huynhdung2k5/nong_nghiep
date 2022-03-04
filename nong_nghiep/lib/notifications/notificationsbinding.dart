import 'package:get/get.dart';
import 'package:nong_nghiep/notifications/notificationscontroller.dart';

class NotificationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationsController>(() => NotificationsController());
  }
  
}