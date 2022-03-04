import 'package:geolocator/geolocator.dart';

Future<Position> indetificationLocation() async {
  bool serviceEnable;
  LocationPermission permission;

  serviceEnable = await Geolocator.isLocationServiceEnabled();

  if (!serviceEnable) {
    return Future.error('Dịch vụ định vị bị tắt.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Quyền định vị bị từ chối');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return Future.error(
      'Quyền định vị bị từ chối vĩnh viễn, chúng tôi không thể yêu cầu cấp quyền vị trí.');
  }

  return Geolocator.getCurrentPosition();
}