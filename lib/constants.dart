import 'package:portfolio_app/models/project_model.dart';

class Constants {
  static final List<ProjectModel> projects = [
    ProjectModel(
      actionLink: 'https://www.studentmitra.in/',
      imgURL:
          'https://raw.githubusercontent.com/pktintali/students-mitra/master/screenshots/screenshot2.png',
      projectName: 'Study Analyzer',
      shortDescription:
          'Tech stacks used react, redux, and firebase. Take test and analyze your subject knowledge with studentmitra. Key features are Recommended learning based on performance, Exam Mode and Game Mode play quiz with your friends.',
    ),
    ProjectModel(
      actionLink: '#',
      imgURL:
          'https://raw.githubusercontent.com/pktintali/flutter-portfolio/pradeep/assets/images/shop_guide.jpg',
      projectName: 'Local Shop Guide',
      shortDescription:
          'Tech stacks used flutter and firebase. This App helps users to find the best shop nearby them. It also helps sellers to get more customer by listing their shop on this app. Kee features include navigating to a shop, direct call action to seller and rating.',
    ),
    ProjectModel(
      actionLink: 'https://pksorting.web.app/',
      imgURL:
          'https://raw.githubusercontent.com/pktintali/flutter-portfolio/pradeep/assets/images/sorting_visualizer.png',
      projectName: 'Sorting Visualizer',
      shortDescription: 'Tech stacks used flutter. Visualize sorting time of different sortting algorithms with graph. Comparision option is also available for comparing the sorting time of different - different algorithms. Best/Avg case vs Worst case comparision is also available.' 
    ),
  ];
}
