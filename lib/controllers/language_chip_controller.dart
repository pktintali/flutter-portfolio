import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageChipController extends GetxController {
  bool _chip1Status = true;
  bool _chip2Status = false;
  bool _chip3Status = false;

  bool get chip1Status => _chip1Status;
  bool get chip2Status => _chip2Status;
  bool get chip3Status => _chip3Status;

  void activateChip1() {
    _chip1Status = true;
    _chip2Status = false;
    _chip3Status = false;
    Locale locale = const Locale('en', 'US');
    Get.updateLocale(locale);
    update();
  }

  void activateChip2() {
    _chip2Status = true;
    _chip1Status = false;
    _chip3Status = false;
    Locale locale = const Locale('hi', 'IN');
    Get.updateLocale(locale);
    update();
  }

  void activateChip3() {
    _chip3Status = true;
    _chip2Status = false;
    _chip1Status = false;
    Locale locale = const Locale('ja', 'JP');
    Get.updateLocale(locale);
    update();
  }
}
