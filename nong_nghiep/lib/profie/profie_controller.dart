import 'package:get/get.dart';
import 'package:nong_nghiep/auth/authcontroller.dart';
import 'package:nong_nghiep/profie/profie.dart';
import 'package:nong_nghiep/profie/profie_api.dart';

class ProfieController extends GetxController {
  final _user = Profie.nullProfie.obs;
  static final authController = Get.find<AuthController>().auth;
  Profie get user => _user.value;

  fetchProfie() async {
    if (!authController) {
      return;
    }
    try {
      final rs = await ProfieApi().getProfie();
      _user(Profie.from(rs.data['data']));
    } on Exception catch (e) {

    }
  }


  @override
  void onInit() {
    fetchProfie();
    super.onInit();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}