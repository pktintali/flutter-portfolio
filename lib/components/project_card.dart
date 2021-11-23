import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/models/project_model.dart';
import 'package:portfolio_app/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel project;
  const ProjectCard({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              spreadRadius: 3,
            )
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: SizedBox(
          // height: !Utils.isMobile(context)
          //     ? Utils.mdqw(context) / 4
          //     : Utils.mdqw(context) * 1.2,
          width: !Utils.isMobile(context)
              ? Utils.mdqw(context) / 4
              : Utils.mdqw(context) * 0.9,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(project.imgURL),
              ),
              Text(
                project.projectName.tr,
                style: GoogleFonts.laila(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  project.shortDescription!.tr,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.cairo(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 6),
                child: TextButton(
                  child: Text(
                    'project_action'.tr,
                    style: const TextStyle(fontSize: 17),
                  ),
                  onPressed: () async {
                    if (project.actionLink != '#') {
                      await canLaunch(project.actionLink)
                          ? await launch(project.actionLink)
                          : throw 'Could not launch ${project.actionLink}';
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
