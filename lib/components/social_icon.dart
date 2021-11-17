import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcon extends StatelessWidget {
  final String imgURL;
  final String actionLink;
  const SocialIcon({Key? key, required this.imgURL, required this.actionLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      onPressed: () async {
        await canLaunch(actionLink)
            ? await launch(actionLink)
            : throw 'Could not launch $actionLink';
      },
      child: Image.network(imgURL),
    );
  }
}
