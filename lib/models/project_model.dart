class ProjectModel {
  final String imgURL;
  final String projectName;
  final String? shortDescription;
  final String actionLink;

  ProjectModel(
      {required this.imgURL, required this.projectName, this.shortDescription, required this.actionLink});
}
