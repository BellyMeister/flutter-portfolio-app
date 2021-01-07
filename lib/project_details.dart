import 'package:flutter/material.dart';

import 'Models/Project.dart';

class ProjectDetails extends StatelessWidget {
  final Project project;

  ProjectDetails({this.project});
  Color red;
  Color black;
  Color white;
  @override
  Widget build(BuildContext context) {
    red = Theme.of(context).primaryColor;
    black = Theme.of(context).backgroundColor;
    white = Theme.of(context).accentColor;
    return Scaffold(
      appBar: AppBar(
        title: Text(project.title),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(project.subtitle, style: TextStyle(color: red, fontSize: 17, fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,20,0,20),
                  child: Image.asset(project.imageSource),
                ),
                Text(project.bodyText, style: TextStyle(fontSize: 15.5)),
              ],
            ),
          )
        ],
      ),
    );
  }
}