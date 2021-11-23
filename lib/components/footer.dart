import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('copyright'.tr),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('built_with'.tr),
            TextButton(
              onPressed: () {},
              child: Text('built_with_name'.tr),
            ),
          ],
        )
      ],
    );
  }
}
