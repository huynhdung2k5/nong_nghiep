import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nong_nghiep/home/homecontroller.dart';
import 'package:nong_nghiep/weather/weather_page.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: InkWell(
          onTap: () => Get.toNamed('search'),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'tìm kiếm...',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 18,
                      ),
                    ))
              ],
            ),
          ),
        ),
        actions: [
          FlatButton(
            minWidth: 10,
            onPressed: () => Get.toNamed('notifications'),
            child: Icon(Icons.notifications,color: Colors.white,),
          ),
          FlatButton(
            minWidth: 10,
            onPressed: () => Get.toNamed('cart'),
            child: Icon(Icons.shopping_cart_outlined,color: Colors.white,),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: const [
            //     Text(
            //       'Thành phố Cần Thơ',
            //       style: TextStyle(fontSize: 30, color: Colors.white),
            //     ),
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: const [
            //     Text(
            //       '8:00PM',
            //       style: TextStyle(fontSize: 24, color: Colors.white),
            //     )
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     Column(
            //       children: [
            //         Row(
            //           children: const [
            //             Icon(
            //               Icons.nightlight_outlined,
            //               size: 30,
            //               color: Colors.white,
            //             ),
            //             Text(
            //               'Trời trong',
            //               style: TextStyle(color: Colors.white, fontSize: 24),
            //             ),
            //           ],
            //         ),
            //         const SizedBox(height: 16.0),
            //         Row(
            //           children: const [
            //             Icon(
            //               Icons.file_upload,
            //               color: Colors.white,
            //               size: 18,
            //             ),
            //             Text(
            //               '32',
            //               style: TextStyle(fontSize: 18, color: Colors.white),
            //             ),
            //             SizedBox(width: 16),
            //             Icon(
            //               Icons.download,
            //               color: Colors.white,
            //               size: 18,
            //             ),
            //             Text(
            //               '22',
            //               style: TextStyle(fontSize: 18, color: Colors.white),
            //             )
            //           ],
            //         ),
            //       ],
            //     ),
            //     Container(
            //       width: 2,
            //       height: 74,
            //       decoration: BoxDecoration(
            //           border: Border.all(width: 1, color: Colors.white)),
            //     ),
            //     const Text(
            //       '29',
            //       style: TextStyle(fontSize: 100, color: Colors.white),
            //     )
            //   ],
            // ),
            const WeatherPage(),
            GridView(
              children: [
                InkWell(
                  child: itemGridView('assets/icons/icon1.png', 'Cây con giống'),
                  onTap: () => Get.toNamed('seedling',arguments: 'product1'),
                ),
                InkWell(
                  child: itemGridView('assets/icons/icon2.png', 'Kiểm định chất lượng'),
                  onTap: () => Get.toNamed('censorship'),
                ),
                itemGridView('assets/icons/icon3.png', 'Tra cứu thông tin'),
                InkWell(
                  child: itemGridView('assets/icons/icon4.png', 'Phân, thuốc'),
                  onTap: () => Get.toNamed('medicine'),
                ),
                itemGridView('assets/icons/icon5.png', 'Xây dựng thương hiệu'),
                InkWell(
                  child: itemGridView('assets/icons/icon6.png', 'Chuyên gia nhà khoa học'),
                  onTap: () => Get.toNamed('scientist'),
                ),
                itemGridView('assets/icons/icon7.png', 'Công ty doanh nghiệp'),
                itemGridView('assets/icons/icon8.png', 'Nhà nông'),
                itemGridView('assets/icons/icon9.png', 'Kiến thức'),
                itemGridView('assets/icons/icon10.png', 'Tin tức thị trường'),
                itemGridView('assets/icons/icon11.png', 'Truyền hình nông nghiệp'),
                itemGridView('assets/icons/icon12.png', 'Gian hàng'),
                ],
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget itemGridView(String imageUrl, String title) => Container(
      width: 70,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14), color: Colors.white),
              child: Image(
                image: AssetImage(imageUrl),
                width: 50,
                height: 50,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 110,
              child:Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
