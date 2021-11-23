import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_app/controllers/language_chip_controller.dart';

class TranslateButton extends StatelessWidget {
  TranslateButton({Key? key}) : super(key: key);

  final LanguageChipController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.translate,
        color: Colors.grey,
      ),
      onPressed: () {
        Get.defaultDialog(
          title: 'Select Language',
          middleText: 'Select Your Preferred Language',
          actions: [
            InputChip(
              label: const Text('English'),
              onSelected: (v) {
                c.activateChip1();
                Get.back();
              },
              checkmarkColor: Colors.blue,
              selected: c.chip1Status,
              selectedColor: Colors.yellow,
            ),
            InputChip(
              label: const Text('हिंदी'),
              onSelected: (v) {
                c.activateChip2();
                Get.back();
              },
              checkmarkColor: Colors.blue,
              selected: c.chip2Status,
              selectedColor: Colors.yellow,
            ),
            InputChip(
              label: const Text('日本'),
              onSelected: (v) {
                c.activateChip3();
                Get.back();
              },
              checkmarkColor: Colors.blue,
              selected: c.chip3Status,
              selectedColor: Colors.yellow,
            ),
          ],
        );
      },
    );
  }
}
