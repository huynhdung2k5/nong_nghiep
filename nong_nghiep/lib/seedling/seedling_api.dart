import 'package:dio/dio.dart';

class SeedlingApi {
  static final dio = Dio(BaseOptions(
    baseUrl: 'https://nongnghiepd24.herokuapp.com/api'));

  static Future<Response> getCategory(String category)
  => dio.get('/category/$category');

  static Future<Response> getGroupCategory(String subCategory)
  => dio.get('/group-category/$subCategory');

  static Future<Response> getSubgroupCategory(String subGroupCategory)
  => dio.get('/details-group-category/$subGroupCategory');
}