import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nong_nghiep/appcolor/appcolor.dart';

  Widget productDetail(String urlImage, String name,
    String newPrice, String price, String details) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 300,
          width: Get.width,
          child: Image.network(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: Get.width,
          decoration: const BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          width: Get.width,
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(newPrice,
                    style: const TextStyle(
                        fontSize: 30,
                        color: redColor,
                        fontWeight: FontWeight.bold)),
                Text(price)
              ],
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.star, color: Color(0xffFEA621)),
                    Icon(Icons.star, color: Color(0xffFEA621)),
                    Icon(Icons.star, color: Color(0xffFEA621)),
                    Icon(Icons.star, color: Color(0xffFEA621)),
                    Icon(Icons.star, color: Color(0xffFEA621)),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text('Đã bán 2,5k'),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Icon(Icons.favorite_border_outlined,
                          color: redColor),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Icon(Icons.share, color: Colors.blue),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Icon(Icons.facebook, color: Colors.blue),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          width: Get.width,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(top: 16),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/profie.png'))),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Shop David Anh',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(redColor),
                                minimumSize:
                                    MaterialStateProperty.all<Size>(
                                        Size(41, 12))),
                            onPressed: () {},
                            child: const Text('Shop'),
                          )
                        ],
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(mainColor),
                        minimumSize: MaterialStateProperty.all<Size>(
                            const Size(60, 60))),
                    onPressed: () {},
                    child: Column(
                      children: const [
                        Icon(
                          Icons.store,
                          color: Colors.white,
                        ),
                        Text('Xem Shop')
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(
                  children: [
                    Row(
                      children: const [
                        Text(
                          '12 ',
                          style: TextStyle(color: redColor),
                        ),
                        Text('Sản phẩm'),
                      ],
                    ),
                    const SizedBox(width: 16),
                    Row(
                      children: const [
                        Text('4.8 ', style: TextStyle(color: redColor)),
                        Text('Đánh giá'),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(color: Colors.white),
          margin: const EdgeInsets.only(top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Get.width,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 1, color: Color(0xffc4c4c4)))),
                padding: const EdgeInsets.only(bottom: 8),
                margin: const EdgeInsets.only(bottom: 8),
                child: const Text('Chi tiết sản phẩm',
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold)),
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    style: TextStyle(color: Colors.black),
                    text:
                        details,
                  ),
                  const TextSpan(
                    style: TextStyle(color: Colors.blue),
                    text: 'Xem thêm',
                  )
                ]),
              )
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white
          ),
          width: Get.width,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(top: 16),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xffc4c4c4),
                      width: 1,
                    )
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/profie.png'),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8,top: 8),
                              child: Text('David Dacula Anh',style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                          ],
                        ),
                        popupMenuButton()
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.star,color: Color(0xffFEA621)),
                              Icon(Icons.star,color: Color(0xffFEA621)),
                              Icon(Icons.star,color: Color(0xffFEA621)),
                              Icon(Icons.star,color: Color(0xffFEA621)),
                              Icon(Icons.star,color: Color(0xffFEA621)),
                            ],
                          ),
                          const SizedBox(width: 8),
                          const Text('09/12/2021',style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 16,bottom: 16),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            color: Colors.black
                          ),
                          children: [
                            TextSpan(
                              text: 'Phân bón rất hiệu quả, mình rất thích, 4 sao.',
                            )
                          ]
                        )
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xffc4c4c4),
                        width: 1,
                      )
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/profie.png'),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8,top: 8),
                                child: Text('David Dacula Anh',style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ),
                            ],
                          ),
                          popupMenuButton()
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.star,color: Color(0xffFEA621)),
                                Icon(Icons.star,color: Color(0xffFEA621)),
                                Icon(Icons.star,color: Color(0xffFEA621)),
                                Icon(Icons.star,color: Color(0xffFEA621)),
                                Icon(Icons.star,color: Color(0xffFEA621)),
                              ],
                            ),
                            const SizedBox(width: 8),
                            const Text('09/12/2021',style: TextStyle(fontSize: 14)),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 16,bottom: 16),
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              color: Colors.black
                            ),
                            children: [
                              TextSpan(
                                text: 'Phân bón rất hiệu quả, mình rất thích, 4 sao.',
                              )
                            ]
                          )
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
  PopupMenuButton<dynamic> popupMenuButton() {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      itemBuilder: (context) => [
        const PopupMenuItem(child: Text('Xóa bình luận')),
        const PopupMenuItem(child: Text('Báo cáo')),
        const PopupMenuItem(child: Text('Lưu bình luận')),
      ],
    );
  }

