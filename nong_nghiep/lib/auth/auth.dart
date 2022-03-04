import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nong_nghiep/appcolor/appcolor.dart';
import 'package:nong_nghiep/auth/authcontroller.dart';
import 'package:nong_nghiep/auth/register.dart';
import 'package:nong_nghiep/utils/utils.dart';

class Login extends GetView<AuthController> {
  const Login({ Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phomeNumberController =
        TextEditingController(text: Utils.box.read("phoneNumber") ?? "");
    final passwordController =
        TextEditingController(text: Utils.box.read("password") ?? "");
    return 
      Scaffold(
        body: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/background.png'))
          ),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14)
              ),
              height: 280,
              margin: const EdgeInsets.only(left: 32,right: 32),
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFormField(
                    controller: phomeNumberController,
                    decoration: const InputDecoration(
                      prefix: Icon(Icons.person,color: mainColor,),
                      hintText: 'Số điện thoại',
                    ),
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      prefix: Icon(Icons.lock,color: mainColor,),
                      hintText: 'Mật khẩu',
                      suffix: Icon(Icons.visibility,color: Color(0xffc4c4c4),),
                    ),
                  ),
                  const Text('Quên mật khẩu',style: TextStyle(
                    color: mainColor,
                    fontSize: 10,
                    fontStyle: FontStyle.italic,
                  ),),
                  ElevatedButton(
                  onPressed: () {
                    controller.login(phomeNumberController.text.trim(),
                        passwordController.text.trim());
                  },
                  child: Obx(() => controller.loading.isTrue
                      ? Center(child: CircularProgressIndicator())
                      : Text("đăng nhập")),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(mainColor),
                      minimumSize: MaterialStateProperty.all<Size>(const Size(280, 30)),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      minimumSize: MaterialStateProperty.all<Size>(const Size(280, 30)),
                    ),
                onPressed: () {
                  Get.to(Signup());
                },
                child: Text("đăng ký",style: TextStyle(color: Colors.black))),
                ],
              ),
            ),
          ),
        ),
      );

  }
}