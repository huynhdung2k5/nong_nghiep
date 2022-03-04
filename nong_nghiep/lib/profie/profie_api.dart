import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:nong_nghiep/utils/utils.dart';

class ProfieApi {
  static final dio = Dio(
    BaseOptions(baseUrl: "https://nongnghiepd24.herokuapp.com/api"),
  );

  String get id => JwtDecoder.decode(Utils.box.read('accessToken'))['data']['_id'];
  Map<String, dynamic> get headers => {
    'Authorization' : Utils.box.read('accessToken'),
  };

  Future<Response> getProfie() => dio.get(
    '/profile/$id',
    options: Options(headers: headers),
  );

  Future<Response> updateProfie(String fullName, 
    String address, String email) => dio.post('/profile', data: {
      "ownerID": id,
      "fullName": fullName,
      "address": address,
      "email": email
    }, options: Options(headers: headers));
}