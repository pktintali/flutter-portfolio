import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/components/skill_card.dart';
import 'package:portfolio_app/utils.dart';

class TopSkills extends StatelessWidget {
  const TopSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'top_skills'.tr,
          style: GoogleFonts.laila(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Utils.isMobile(context) ? 10 : Utils.mdqw(context) / 4,
          ),
          child: Wrap(
            children: const [
              SkillCard(
                url:
                    'https://cdn.iconscout.com/icon/free/png-256/flutter-2038877-1720090.png',
              ),
              SkillCard(
                url:
                    'https://raw.githubusercontent.com/pktintali/flutter-portfolio/pradeep/media/dart.png',
              ),
              SkillCard(
                  url:
                      'https://cdn4.iconfinder.com/data/icons/google-i-o-2016/512/google_firebase-2-512.png'),
              SkillCard(
                  url: 'https://cdn-icons-png.flaticon.com/512/226/226777.png'),
              SkillCard(
                  url:
                      'https://cdn.iconscout.com/icon/free/png-256/python-3521655-2945099.png'),
              SkillCard(
                  url:
                      'https://raw.githubusercontent.com/pktintali/flutter-portfolio/pradeep/media/git.png'),
            ],
          ),
        ),
      ],
    );
  }
}
