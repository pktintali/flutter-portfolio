import 'package:portfolio_app/models/project_model.dart';

class Constants {
  static final List<ProjectModel> projects = [
    ProjectModel(
      actionLink: 'https://www.studentmitra.in/',
      imgURL:
          'https://raw.githubusercontent.com/pktintali/students-mitra/master/screenshots/screenshot2.png',
      projectName: 'project1_title',
      shortDescription: 'project1_description',
    ),
    ProjectModel(
      actionLink: '#',
      imgURL:
          'https://raw.githubusercontent.com/pktintali/flutter-portfolio/pradeep/assets/images/shop_guide.jpg',
      projectName: 'project2_title',
      shortDescription: 'project2_description',
    ),
    ProjectModel(
      actionLink: 'https://pksorting.web.app/',
      imgURL:
          'https://raw.githubusercontent.com/pktintali/flutter-portfolio/pradeep/assets/images/sorting_visualizer.png',
      projectName: 'project3_title',
      shortDescription: 'project3_description',
    ),
  ];
}
