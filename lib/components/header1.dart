import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/utils.dart';

class Header1 extends StatelessWidget {
  const Header1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Wrap(
              children: [
                SizedBox(
                  width: Utils.isMobile(context)
                      ? Utils.mdqw(context)
                      : Utils.mdqw(context) / 2,
                  height: Utils.isMobile(context)
                      ? Utils.mdqh(context) / 2
                      : Utils.mdqh(context) - 70,
                  child: Padding(
                    padding: Utils.isMobile(context)
                        ? const EdgeInsets.all(5.0)
                        : const EdgeInsets.only(
                            top: 50, bottom: 50, right: 10, left: 100),
                    child: ExtendedImage.network(
                      'https://avatars.githubusercontent.com/u/47480465',
                      cache: false,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: Utils.isMobile(context)
                      ? Utils.mdqw(context)
                      : Utils.mdqw(context) / 2,
                  height: Utils.isMobile(context)
                      ? Utils.mdqh(context) / 2
                      : Utils.mdqh(context) - 70,
                  child: Center(
                    child: SizedBox(
                      height: Utils.isMobile(context)
                          ? 200 / (Utils.mdqw(context) * 0.0025)
                          : 180,
                      width: Utils.isMobile(context)
                          ? Utils.mdqw(context) * 0.85
                          : 380,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 8,
                              spreadRadius: 5,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                'about_me'.tr,
                                style: GoogleFonts.laila(fontSize: 24,
                                  fontWeight: FontWeight.bold,),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'about_me_text'.tr,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              child: const Text('Change Lang'),
              onPressed: () {
                Locale locale;
                var local = Get.locale;
                if (local != null) {
                  if (local.languageCode == 'hi') {
                    locale = const Locale('en', 'US');
                  } else {
                    locale = const Locale('hi', 'IN');
                  }
                  Get.updateLocale(locale);
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}
