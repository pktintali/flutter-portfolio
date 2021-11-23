import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/utils.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'get_in_touch'.tr,
          style: GoogleFonts.laila(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          width: Utils.isMobile(context)
              ? Utils.mdqw(context) * 0.85
              : Utils.mdqw(context) / 2,
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFFC4ACA1),
                  blurRadius: 4,
                  spreadRadius: 2,
                )
              ],
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'contact_name'.tr,
                    style: const TextStyle(
                      color: Color(0xFF4756DF),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'name_hint'.tr,
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF4756DF),
                            ),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10)),
                    ),
                  ),
                  Text(
                    'email'.tr,
                    style: const TextStyle(
                      color: Color(0xFF4756DF),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'email_hint'.tr,
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF4756DF),
                            ),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10)),
                    ),
                  ),
                  Text(
                    'message'.tr,
                    style: const TextStyle(
                      color: Color(0xFF4756DF),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      minLines: 10,
                      maxLines: 15,
                      decoration: InputDecoration(
                          hintText: 'message_hint'.tr,
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF4756DF),
                            ),
                          ),
                          contentPadding: const EdgeInsets.all(10.0)),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'submit'.tr,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
