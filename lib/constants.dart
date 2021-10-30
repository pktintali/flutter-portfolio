import 'package:portfolio_app/models/project_model.dart';

class Constants {
  static final List<ProjectModel> projects = [
    ProjectModel(
      actionLink: '#',
      imgURL:
          'https://eager-williams-af0d00.netlify.app/assets/images/expenseTracker.png',
      projectName: 'Expense Tracker',
    ),
    ProjectModel(
      actionLink: '#',
      imgURL:
          'https://eager-williams-af0d00.netlify.app/assets/images/netflixClone.png',
      projectName: 'Netflix Clone',
    ),
    ProjectModel(
      actionLink: '#',
      imgURL:
          'https://eager-williams-af0d00.netlify.app/assets/images/greenyEarth.png',
      projectName: 'Greeny Earth',
    ),
  ];
}
