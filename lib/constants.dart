import 'package:portfolio_app/models/project_model.dart';

class Constants {
  static final List<ProjectModel> projects = [
    ProjectModel(
      actionLink: 'https://www.studentmitra.in/',
      imgURL:
          'https://raw.githubusercontent.com/pktintali/students-mitra/master/screenshots/screenshot2.png',
      projectName: 'Study Analyzer',
      shortDescription: 'Tech stacks used react, redux, and firebase. Take test and analyze your subject knowledge with studentmitra. Key features are Recommended learning based on performance, Exam Mode and Game Mode play quiz with your friends.',
    ),
    ProjectModel(
      actionLink: '#',
      imgURL:
          'https://raw.githubusercontent.com/pktintali/flutter-portfolio/main/assets/images/shop_guide.jpg',
      projectName: 'Tech stacks used flutter and firebase. This App helps users to find the best shop nearby them. It also helps sellers to get more customer by listing their shop on this app. Kee features include naigation to a shop, direct call action to seller and rating.',
    ),
    ProjectModel(
      actionLink: '#',
      imgURL:
          'https://eager-williams-af0d00.netlify.app/assets/images/greenyEarth.png',
      projectName: 'Greeny Earth',
    ),
  ];
}
