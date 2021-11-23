import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/utils.dart';

class MoreAboutMe extends StatelessWidget {
  const MoreAboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: Utils.isMobile(context) ? 40 : 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Center(
              child: Text(
                'more_about_me'.tr,
                style: GoogleFonts.laila(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Text(
            'more_about_me_text1'.tr,
            style: GoogleFonts.cairo(),
            textAlign: TextAlign.justify,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              'more_about_me_text2'.tr,
              style: GoogleFonts.cairo(),
              textAlign: TextAlign.justify,
            ),
          ),
          Text(
            'more_about_me_text3'.tr,
            style: GoogleFonts.cairo(),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
