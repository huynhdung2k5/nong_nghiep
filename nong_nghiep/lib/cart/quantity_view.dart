import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nong_nghiep/cart/quantity_controller.dart';

class QuantityView extends StatelessWidget {
  const QuantityView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(QuantityController());
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children : [
          const Text('Số lượng',style: TextStyle(fontSize: 16),),
          GestureDetector(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffc4c4c4),
              ),
              height: 24,
              width: 24,
              margin: const EdgeInsets.only(right: 16),
              child: const Icon(Icons.remove_circle,color: Colors.white,size: 16),
            ),
            onTap: () => controller.remove(),
          ),
          Obx(() =>
            Text(
              controller.quantity.toString(),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),  
            )
          ),
          GestureDetector(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffc4c4c4),
              ),
              height: 24,
              width: 24,
              margin: const EdgeInsets.only(left: 16),
              child: const Icon(Icons.add_circle,color: Colors.white,size: 16),
            ),
            onTap: () => controller.add(),
          ),
        ],
      ),
    );
  }
}