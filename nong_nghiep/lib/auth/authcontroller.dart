import 'package:get/get.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:nong_nghiep/api/authapi.dart';
import 'package:nong_nghiep/utils/utils.dart';

class AuthController extends GetxController {
  final _auth = false.obs;
  final loading = false.obs;

  bool get auth => _auth.value;

  register(String fullname, String phoneNumber, 
    String password, String address, String email) async{
      if (!GetUtils.isPhoneNumber(phoneNumber)) {
        return print('Số điện thoại không hợp lệ');
      }
      try {
        loading(true);
        final response = await AuthApi().register(fullname, address, phoneNumber, password, email);
        login(phoneNumber, password);
      } on Exception {
        print('Đăng ký thành công');
      }finally{
        loading(false);
      }
  }

  login(String phoneNumber, String password) async {
    if (!GetUtils.isPhoneNumber(phoneNumber)) {
      return print("sdt khong hop le.");
    }
    if (password.isEmpty) {
      return print("mat khau khong duoc de trong");
    }
    try {
      loading(true);
      final response = await AuthApi().login(phoneNumber, password);
      //luu accessToken cua tai khoan
      Utils.box.write("accessToken", response.data["accessToken"]);
      Utils.box.write("refreshToken", response.data["refreshToken"]);
      Utils.box.write("phoneNumber", phoneNumber);
      Utils.box.write("password", password);
      Get.toNamed('dashboard');
      _auth(true);
    } on Exception {
      print("dang nhap khong thanh cong");
    } finally {
      loading(false);
    }
  }

  signout(){
    Utils.box.remove("accessToken");
    Utils.box.remove("accessToken");
    _auth(false);
  }

  //kiem tra xem da dang nhap hay chua
  _check() async {
    if (Utils.box.hasData("accessToken")) {
      return;
    }
    // IsExpired: het hang
    //kiem tra het hang accessToken
    if (JwtDecoder.isExpired(Utils.box.read("accessToken"))) {
      try {
        final response =
            await AuthApi().refreshToken(Utils.box.read("refreshToken"));
        Utils.box.write("accessToken", response.data["accessToken"]);
      } on Exception {
        return;
      }
    }
    _auth(true);
  }

  @override
  void onInit() {
    super.onInit();
    _check();
  }
}