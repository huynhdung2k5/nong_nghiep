import 'package:dio/dio.dart';

class ProductsApi {
  static final dio = Dio(BaseOptions(baseUrl: 'https://nongnghiepd24.herokuapp.com/api'));

  static Future<Response>getProducts(String subCategory, 
    String groupCaterogy, String subGroupCategory,int page)
  => dio.get('/product-category/$subCategory/$groupCaterogy/$subGroupCategory/$page');
  static Future<Response>getProduct(String productID)
  => dio.get('/details-product/$productID');
}