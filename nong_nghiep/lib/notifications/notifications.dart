import 'package:flutter/material.dart';
import 'package:nong_nghiep/appcolor/appcolor.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text('Thông báo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              itemNotifications(
                Icons.add_shopping_cart_outlined,
                mainColor,
                'Bạn đã mua hàng thành công',
                'Chúc mừng bạn đã mua hàng thành công, cảm ơn bạn đã ủng hộ.'
              ),
              itemNotifications(
                Icons.remove_shopping_cart_outlined,
                const Color(0xffff0000),
                'Bạn đã hủy hàng thành công',
                'bạn đã hủy hàng thành công, cảm ơn bạn đã ủng hộ. '
              ),
              itemNotifications(
                Icons.add_shopping_cart_outlined,
                mainColor,
                'Bạn đã mua hàng thành công',
                'Chúc mừng bạn đã mua hàng thành công, cảm ơn bạn đã ủng hộ.'
              ),
                
            ],
          ),
        ),
      ),
    );
  }
}

Widget itemNotifications( IconData icon, Color itemColor, String title,String description) => Container(
      padding: const EdgeInsets.only(top: 16,bottom: 16),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: Color(0xffc4c4c4),
      ))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: itemColor, borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        '09/12/2021',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
                description),
          )
        ],
      ),
    );
