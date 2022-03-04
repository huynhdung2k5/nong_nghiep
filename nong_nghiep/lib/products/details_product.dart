import 'package:flutter/material.dart';

class DetailsProduct extends StatelessWidget {
  const DetailsProduct({Key? key}) : super(key: key);

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
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Chi tiết sản phẩm",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Phần trùn quế là phân của con trùn đỏ. Đây là chất trải của con trùn quế sau khi ăn những loại chất hữu cơ và thải ra. Với phân nguyên chất từ trùn quế thì chúng là hữu cơ hoàn toàn, chứa dinh dưỡng với hàm lượng cực kỳ lớn. Có thể nói trong các...",
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
