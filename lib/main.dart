import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_app/translations/messages.dart';
import 'package:portfolio_app/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pradeep Kumar',
      debugShowCheckedModeBanner: false,
      translations: Messages(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      home: HomePage(),
    );
  }
}
