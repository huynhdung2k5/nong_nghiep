import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nong_nghiep/appcolor/appcolor.dart';
import 'package:nong_nghiep/auth/authcontroller.dart';

class Signup extends GetView<AuthController> {
  const Signup({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fullNameController = TextEditingController();
    final phomeNumberController = TextEditingController();
    final passwordController = TextEditingController();
    final emailController = TextEditingController();
    final addressController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/background.png')),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            height: 390,
            margin: const EdgeInsets.only(left: 32,right: 32),
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextFormField(
                  controller: phomeNumberController,
                  decoration: const InputDecoration(
                    prefix: Icon(Icons.person,color: mainColor,),
                    hintText: 'Tên đăng nhập',
                  ),
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    prefix: Icon(Icons.block,color: mainColor,),
                    hintText: 'Mật khẩu',
                    suffix: Icon(Icons.visibility,color: Color(0xffc4c4c4),),
                  ),
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    prefix: Icon(Icons.block,color: mainColor,),
                    hintText: 'Nhập lại mật khẩu',
                    suffix: Icon(Icons.visibility,color: Color(0xffc4c4c4),),
                  ),
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    prefix: Icon(Icons.block,color: mainColor,),
                    hintText: 'Email',
                    suffix: Icon(Icons.visibility,color: Color(0xffc4c4c4),),
                  ),
                ),
                TextFormField(
                  controller: addressController,
                  decoration: const InputDecoration(
                    prefix: Icon(Icons.block,color: mainColor,),
                    hintText: 'Địa chỉ',
                    suffix: Icon(Icons.visibility,color: Color(0xffc4c4c4),),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                  controller.register (
                    fullNameController.text.trim(),
                    phomeNumberController.text.trim(),
                    passwordController.text.trim(),
                    addressController.text.trim(),
                    emailController.text.trim(),
                  );
                  
                },
                  child: const Text('Đăng ký'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(mainColor),
                    minimumSize: MaterialStateProperty.all<Size>(const Size(280, 30)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}