import 'package:get/get.dart';
import 'package:portfolio_app/translations/en_us.dart';
import 'package:portfolio_app/translations/hi_in.dart';
import 'package:portfolio_app/translations/ja_jp.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': EnUs.map,
        'hi_IN': HiIn.map,
        'ja_JP': JaJp.map,
      };
}
