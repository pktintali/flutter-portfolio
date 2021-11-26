import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String twitterLink = 'https://twitter.com/pradeep_tintali';
    return Column(
      children: [
        Text('copyright'.tr),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('built_with'.tr),
            TextButton(
              onPressed: () async {
                await canLaunch(twitterLink)
                    ? await launch(twitterLink)
                    : throw 'Could not launch $twitterLink';
              },
              child: Text('built_with_name'.tr),
            ),
          ],
        )
      ],
    );
  }
}
