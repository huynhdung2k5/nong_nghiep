import 'package:flutter/material.dart';
import 'package:nong_nghiep/appcolor/appcolor.dart';

class Favorite extends StatelessWidget {
  const Favorite({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text('YÊU THÍCH '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              itemFavorite(
                'assets/images/itemCart.png', 
                'PHÂN BÓN TRÙN QUẾ VRAT',
                'Giáo Sư A', 
                '150.000đ'
              ),
              itemFavorite(
                'assets/images/itemCart.png', 
                'PHÂN BÓN TRÙN QUẾ VRAT',
                'Giáo Sư A', 
                '150.000đ'
              ),
              itemFavorite(
                'assets/images/itemCart.png', 
                'PHÂN BÓN TRÙN QUẾ VRAT',
                'Giáo Sư A', 
                '150.000đ'
              ),
              itemFavorite(
                'assets/images/itemCart.png', 
                'PHÂN BÓN TRÙN QUẾ VRAT',
                'Giáo Sư A', 
                '150.000đ'
              ),
              itemFavorite(
                'assets/images/itemCart.png', 
                'PHÂN BÓN TRÙN QUẾ VRAT',
                'Giáo Sư A', 
                '150.000đ'
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget itemFavorite(
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
                      Row(
                        children: [
                          Icon(Icons.star_outlined,color: Color(0xffFEA621)),
                          Icon(Icons.star_outlined,color: Color(0xffFEA621)),
                          Icon(Icons.star_outlined,color: Color(0xffFEA621)),
                          Icon(Icons.star_outlined,color: Color(0xffFEA621)),
                          Icon(Icons.star_border,color: Color(0xffFEA621)),
                        ],
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
                            Row(
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
                            SizedBox(width: 100),
                            const Icon(Icons.favorite,color: Color(0xffFF0000)),
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
