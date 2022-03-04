import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nong_nghiep/weather/clock.dart';
import 'package:nong_nghiep/weather/weather_controller.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WeatherController());
    return GestureDetector(
      onTap: () => Get.toNamed('/weather'),
      child: Column(
        children: [
          Obx(() =>
            Text(
                controller.weathers.location.name,
                style: const TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                ),
              ),
          ),
          const SizedBox(width: 8),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Obx(
                          () => 
                          Image.network(
                            controller.weathers.current.condition.icon,
                            width: 40,
                            height: 40,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Obx(
                            () => Text(
                              controller.weathers.current.condition.text,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: Clock(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}