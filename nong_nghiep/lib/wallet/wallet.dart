import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nong_nghiep/appcolor/appcolor.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text('Ví Của Tôi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(Icons.account_balance_wallet_outlined, size: 30),
                  SizedBox(width: 16),
                  Text('Ví',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: Get.width,
                child: Row(
                  children: [
                    Container(
                      width: Get.width / 3,
                      padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: itemColor,
                      )),
                      child: const Text('Ví', style: TextStyle(fontSize: 24)),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: const Color(0xffc4c4c4),
                      )),
                      width: Get.width * 2 / 3 - 32,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('1.000.000đ',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold)),
                          Text('*',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('Chuyển tiền vào ví',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Color(0xffc4c4c4),
                      ),
                      width: 140,
                      height: 140,
                      child: const Center(
                          child: Text('Ngân hàng 1',
                              style: TextStyle(fontSize: 24))),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Color(0xffc4c4c4),
                      ),
                      width: 140,
                      height: 140,
                      child: const Center(
                          child: Text('Ngân hàng 2',
                              style: TextStyle(fontSize: 24))),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16,bottom: 16),
                child: Text('Số tiền chuyển',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffc4c4c4)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child:
                        const Text('500.000', style: TextStyle(fontSize: 18)),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffc4c4c4)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child:
                        const Text('1.000.000', style: TextStyle(fontSize: 18)),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffc4c4c4)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child:
                        const Text('2.000.000', style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 32),
                width: Get.width,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffc4c4c4)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child:
                        const Text('Nhập số tiền', style: TextStyle(fontSize: 24)),
                  ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 62,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(mainColor),
            ),
            onPressed: (){}, 
            child: const Text('Nạp',style: TextStyle(fontSize: 24,color: Colors.white),)
          ),
        ),
      ),
    );
  }
}
