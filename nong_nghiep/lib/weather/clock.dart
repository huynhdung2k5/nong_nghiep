import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nong_nghiep/weather/clock_controller.dart';

class Clock extends StatelessWidget {
  const Clock({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ClockController());
    return Obx(() =>
      Text(controller.currentTime, style: const TextStyle(
          fontSize: 48, color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}