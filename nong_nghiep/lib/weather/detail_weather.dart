import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nong_nghiep/weather/temp.dart';
import 'package:nong_nghiep/weather/weather_controller.dart';
import 'package:nong_nghiep/weather/weather_page.dart';

class DetailWeather extends StatelessWidget {
  const DetailWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<WeatherController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thời tiết'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        height: Get.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/weather.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const WeatherPage(),
                Container(
                  color: Colors.black45,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  margin: const EdgeInsets.only(top: 16),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Dự báo',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                      const Divider(
                        color: Color(0xFFC4C4C4),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (final item
                                in controller.weathers.forecast[0].hours)
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    item.time.substring(
                                        item.time.length - 5, item.time.length),
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Image.network(
                                      item.condition.icon,
                                      width: 48,
                                      height: 48,
                                    ),
                                  ),
                                  Temp(item.temp),
                                ],
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      for (final item in controller.weathers.forecast)
                        Column(
                          children: [
                            const Divider(
                              color: Color(0xFFC4C4C4),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  item.date,
                                  style: const TextStyle(color: Colors.white),
                                ),
                                Image.network(
                                  item.day.condition.icon,
                                  width: 48,
                                  height: 48,
                                ),
                                Temp(item.day.maxTemp),
                                Temp(
                                  item.day.minTemp,
                                  color: const Color(0xFF5E77FF),
                                ),
                              ],
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
                Container(
              color: Colors.black45,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  Image.network(controller.weathers.current.condition.icon),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Nhiệt độ',
                              style: TextStyle(color: Colors.white),
                            ),
                            const Spacer(),
                            Obx(
                              () => Temp(controller.weathers.current.temp),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Color(0xFFC4C4C4),
                        ),
                        Row(
                          children: [
                            const Text(
                              'Độ ẩm',
                              style: TextStyle(color: Colors.white),
                            ),
                            const Spacer(),
                            Obx(
                              () => Text(
                                controller.weathers.current.humidity.toString(),
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Color(0xFFC4C4C4),
                        ),
                        Row(
                          children: [
                            const Text(
                              'Tầm nhìn',
                              style: TextStyle(color: Colors.white),
                            ),
                            const Spacer(),
                            Obx(
                              () => Text(
                                '${controller.weathers.current.vis}km',
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Color(0xFFC4C4C4),
                        ),
                        Row(
                          children: [
                            const Text(
                              'Chỉ số UV',
                              style: TextStyle(color: Colors.white),
                            ),
                            const Spacer(),
                            Obx(
                              () => Text(
                                '${controller.weathers.current.uv}',
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
