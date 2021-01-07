class Project {
  final String title;
  final String subtitle;
  final String imageSource;
  final String bodyText;

  Project({this.title, this.subtitle, this.imageSource, this.bodyText});
}

class ProjectGroup extends Project {
  final String area;
  final List<Project> projects;

  ProjectGroup({this.area, this.projects});
}