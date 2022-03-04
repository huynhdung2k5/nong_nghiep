import 'dart:async';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ClockController extends GetxController {
  final _time = ''.obs;

  String get currentTime => _time.value;

  _getTime() => _time(
    DateFormat('hh:mm').format(DateTime.now()));

  @override
  void onInit() {
    _getTime();
    Timer.periodic(const Duration(seconds: 1), (timer) => _getTime());
    super.onInit();
  }
}