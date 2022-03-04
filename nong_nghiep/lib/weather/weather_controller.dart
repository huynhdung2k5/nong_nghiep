import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:nong_nghiep/services/location_services.dart';
import 'package:nong_nghiep/weather/weather.dart';
import 'package:nong_nghiep/weather/weather_api.dart';

class WeatherController extends GetxController {
  final _weathers = Weather.na.obs;

  Weather get weathers => _weathers.value;

  fetchWeather() async {
    try {
      final position = await indetificationLocation();
      final dio = Dio();
      final rs = await dio.get(
        'http://api.weatherapi.com/v1/forecast.json?key=a01448eda37c4b27ba185320220401&aqi=no&q=${position.latitude},${position.longitude}&lang=vi&days=7');
      
      _weathers(Weather.from(rs.data));
    } on Exception {
      print('Lấy thông tin thời tiết không thành công');
    }
  }

  @override
  void onInit() {
    fetchWeather();
    super.onInit();
  }
}