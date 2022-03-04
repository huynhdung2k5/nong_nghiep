import 'package:flutter/material.dart';
import 'package:nong_nghiep/appcolor/appcolor.dart';

class Voucher extends StatelessWidget {
  const Voucher({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text('Mã giảm giá'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: itemVoucher(
                    'assets/icons/voucher1.png', 
                    'Giảm 50k cho bao phân Urê', 
                    'Hạn sử dụng 12/12/2022'
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: itemVoucher(
                    'assets/icons/voucher2.png', 
                    'Giảm 50k cho bao phân Urê', 
                    'Hạn sử dụng 12/12/2022'
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: itemVoucher(
                    'assets/icons/voucher2.png', 
                    'Giảm 20% khi mua cá giống', 
                    'Hạn sử dụng 12/12/2022'
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: itemVoucher(
                    'assets/icons/voucher4.png', 
                    'Giảm 10% khi mua hạt giống', 
                    'Hạn sử dụng 12/12/2022'
                  ),
                ),
              ],
          ),
        ),
      ),
    );
  }
}

Widget itemVoucher(String urlImage, String title, String text ) => Container(
                decoration: BoxDecoration(
                  color: itemColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(urlImage),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,style: const TextStyle(fontSize: 18,color: Colors.white)),
                        Text(text,style: const TextStyle(fontSize: 12,color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              );
            