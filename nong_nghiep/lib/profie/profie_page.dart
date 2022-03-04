import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nong_nghiep/appcolor/appcolor.dart';
import 'package:nong_nghiep/profie/profie_controller.dart';

class ProfiePage extends GetView<ProfieController> {
  const ProfiePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text('Cá Nhân '),
      ),
      body: Obx(() =>
        Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                    Row(
                      children: [
                        Container(
                            width: 118,
                            height: 118,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(90),
                              image: DecorationImage(
                                image: NetworkImage(controller.user.avatar.url),
                                fit: BoxFit.cover
                              ),
                            ),
                          ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  controller.user.fullName,
                                  style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Image(image: AssetImage('assets/icons/edit.png')),
                              ],
                            ),
                            const Text('Người dùng',style: TextStyle(fontSize: 24)),
                          ],
                        ),
                      ],
                    ),
                ListTile(
                  iconColor: Colors.black,
                  horizontalTitleGap: 10,
                  minLeadingWidth: 10,
                  dense: true,
                  leading: const Icon(Icons.call),
                  title: Text(
                    controller.user.phoneNumber,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                ListTile(
                  iconColor: Colors.black,
                  horizontalTitleGap: 10,
                  minLeadingWidth: 10,
                  dense: true,
                  leading: const Icon(Icons.mail),
                  title: Text(controller.user.email,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                const ListTile(
                  iconColor: Colors.black,
                  horizontalTitleGap: 10,
                  minLeadingWidth: 10,
                  dense: false,
                  leading: Icon(Icons.favorite_outline,size: 30),
                  title: Text('Yêu thích',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                ),
                const ListTile(
                  iconColor: Colors.black,
                  horizontalTitleGap: 10,
                  minLeadingWidth: 10,
                  dense: true,
                  leading: Icon(Icons.account_balance_wallet_outlined,size: 30),
                  title: Text('Ví',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                ),
                InkWell(
                  onTap: () => Get.toNamed('wallet'),
                  child: SizedBox(
                    width: Get.width,
                    child: Row(
                      children: [
                        Container(
                          width: Get.width / 3,
                          padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: itemColor,
                            )
                          ),
                          child: const Text('Ví',style: TextStyle(fontSize: 24)),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffc4c4c4),
                            )
                          ),
                          width: Get.width * 2/3 -32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('1.000.000đ',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                              Text('*',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: Get.width,
                  child: Row(
                    children: [
                      Container(
                        width: Get.width / 3,
                        padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: itemColor,
                          )
                        ),
                        child: const Text('Đơn hàng',style: TextStyle(fontSize: 24)),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffc4c4c4),
                          )
                        ),
                        width: Get.width * 2/3 -32,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('50',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                            SizedBox(width: 50),
                            Text('*',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const ListTile(
                  iconColor: Colors.black,
                  horizontalTitleGap: 10,
                  minLeadingWidth: 10,
                  dense: true,
                  leading: Icon(Icons.account_balance_wallet_outlined,size: 30),
                  title: Text('Mời bạn',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                ),
                const ListTile(
                  iconColor: Colors.black,
                  horizontalTitleGap: 10,
                  minLeadingWidth: 10,
                  dense: true,
                  leading: Icon(Icons.person_add,size: 30),
                  title: Text('Ưu đãi',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                ),
                const ListTile(
                  iconColor: Colors.black,
                  horizontalTitleGap: 10,
                  minLeadingWidth: 10,
                  dense: true,
                  leading: Icon(Icons.settings,size: 30),
                  title: Text('Cài đặt',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 6,
                        offset: const Offset(3, 3),
                      )
                    ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.logout,size: 30,color: redColor,),
                      SizedBox(width: 16),
                      Text('Log out',style: TextStyle(fontSize: 24,color: redColor),)
                    ],
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