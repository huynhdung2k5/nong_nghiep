import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nong_nghiep/appcolor/appcolor.dart';

class InfoProducts extends StatelessWidget {
  final String productName;
  final int newPrice;
  final int price;
  final String quality;
  final int? views;
  final String urlImage;
  const InfoProducts(
    this.productName,
    this.newPrice,
    this.price,
    this.quality,
    this.views,
    this.urlImage,
    { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: Get.width,
          child: 
          (urlImage.isEmpty)?
          Image.network(
            'https://www.generationsforpeace.org/wp-content/uploads/2018/03/empty.jpg',
            fit: BoxFit.cover,
          )
          : Image.network(urlImage, fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                productName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(Icons.favorite,color: redColor,),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    '$newPrice',
                    style: const TextStyle(
                      fontSize: 30,
                      color: redColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '$price',
                    style: const TextStyle(
                      color: greyColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      decoration: TextDecoration.lineThrough
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Đã bán ',
                      style: const TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: quality,
                          style: const TextStyle(color: redColor),
                        )
                      ]
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text('$views lượt xem'),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}