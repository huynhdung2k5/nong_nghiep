import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nong_nghiep/appcolor/appcolor.dart';
import 'package:nong_nghiep/cart/cartcontroller.dart';

class Cart extends GetView<CartController> {
  const Cart({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text('Giỏ hàng'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => itemCart(
                  'assets/images/itemCart.png',
                  'PHÂN BÓN TRÙN QUẾ VRAT',
                  'Giáo Sư A',
                  '150.000đ',
                ),
              ),
              Obx(
                () => itemCart(
                  'assets/images/itemCart.png',
                  'PHÂN BÓN TRÙN QUẾ VRAT',
                  'Giáo Sư A',
                  '150.000đ',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 64),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Giá gốc: ',
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      '300.000đ',
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Ưu đãi: ',
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      '100.000đ',
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top :8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Tổng tiền: ',
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      '200.000đ',
                      style: TextStyle(fontSize: 24, color: redColor),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'Phương thức thanh toán',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff5b5b5b)),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Image(
                              image: AssetImage('assets/icons/cart1.png')),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Trực tuyến',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff5b5b5b)),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Image(
                              image: AssetImage('assets/icons/cart2.png')),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Liên kết',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () => Get.toNamed('voucher'),
                child: Container(
                  margin: const EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    )
                  ]),
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Image(image: AssetImage('assets/icons/cart3.png')),
                          SizedBox(width: 16),
                          Text(
                            'Mã giảm giá',
                            style:
                                TextStyle(fontSize: 24, color: Color(0xff428EFF)),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.chevron_right,
                        size: 30,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget itemCart(
          String imageUrl, String productName, String name, String price) =>
      Container(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
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
                Checkbox(
                    value: controller.checked.value,
                    onChanged: (value) =>
                        controller.checked.value = !controller.checked.value),
                Image(
                  image: AssetImage(imageUrl),
                  width: 98,
                  height: 98,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          name,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          children: [
                            Text(
                              price,
                              style: const TextStyle(
                                fontSize: 12,
                                color: redColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              price,
                              style: const TextStyle(
                                fontSize: 10,
                                color: Color(0xff7D7D7D),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      );
}
