import 'package:dio/dio.dart';

class WeatherApi {
  static final dio = Dio(
    BaseOptions(baseUrl: 'http://api.weatherapi.com/v1/forecast.json?key=a01448eda37c4b27ba185320220401&aqi=no&q=')
  );

  static Future<Response> getWeather( double latitude, double longitude)
  => dio.get('$latitude,$longitude&lang=vi&days=7');
}



