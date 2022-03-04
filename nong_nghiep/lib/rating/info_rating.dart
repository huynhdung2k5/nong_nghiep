import 'package:flutter/material.dart';
import 'package:nong_nghiep/appcolor/appcolor.dart';

class InfoRating extends StatelessWidget {
  const InfoRating({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 0),
            spreadRadius: 0,
            blurRadius: 4,
            color: Colors.grey
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Đánh giá sản phẩm',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: const TextSpan(
                    text: '4',
                    style: TextStyle(color: redColor),
                    children: [
                      TextSpan(
                        text: '/5',
                        style: TextStyle(color: greyColor),
                      ),
                    ],
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey,
              ),
            ],
          )
        ],
      ),
    );
  }
}