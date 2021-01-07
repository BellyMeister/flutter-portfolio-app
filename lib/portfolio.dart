import 'package:flutter/material.dart';
import 'package:flutter_version_of_xamarin_app/project_details.dart';

import 'Models/Project.dart';

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<ProjectGroup> projectGroups = List();
  List<Widget> children = List();
  Color red;
  Color black;
  Color white;
  String subtitleText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut maximus ligula et bibendum malesuada. Fusce aliquet libero vel nibh condimentum sagittis. Nunc porttitor augue vel varius dictum. Vestibulum commodo mi a ex gravida elementum. Mauris commodo tellus erat, sit amet feugiat dui commodo vel. Praesent porttitor ipsum ac risus finibus, nec fermentum eros vehicula. Nulla at faucibus purus. Donec suscipit diam vel nibh ullamcorper finibus. Nam efficitur ex in diam pharetra, eu placerat risus scelerisque. In tellus est, porttitor eu eleifend eget, pulvinar ac magna. ";
  String bodyTextText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut maximus ligula et bibendum malesuada. Fusce aliquet libero vel nibh condimentum sagittis. Nunc porttitor augue vel varius dictum. Vestibulum commodo mi a ex gravida elementum. Mauris commodo tellus erat, sit amet feugiat dui commodo vel. Praesent porttitor ipsum ac risus finibus, nec fermentum eros vehicula. Nulla at faucibus purus. Donec suscipit diam vel nibh ullamcorper finibus. Nam efficitur ex in diam pharetra, eu placerat risus scelerisque. In tellus est, porttitor eu eleifend eget, pulvinar ac magna. Sed ullamcorper nunc erat, non fringilla elit sagittis ut. Curabitur congue, sem ac auctor gravida, nisi lectus tristique ex, at iaculis lorem justo ut orci. Fusce rhoncus sagittis ante id elementum. Sed mattis risus in feugiat vestibulum. Aliquam ligula mauris, porttitor ut commodo a, egestas nec sapien. Nam rutrum, odio eu imperdiet egestas, diam lorem condimentum lacus, id luctus tortor ex in libero. In tristique vel tortor at suscipit. Donec vitae varius risus. Sed arcu urna, sollicitudin sit amet fermentum vel, hendrerit sed magna. Cras quis erat a justo euismod condimentum nec eu urna. Suspendisse at risus non dui tincidunt egestas. Ut id leo vitae turpis ullamcorper consequat. Sed convallis diam id malesuada feugiat. Aenean accumsan lorem id diam convallis tristique. Etiam ornare ultrices turpis, elementum imperdiet massa suscipit a. Nulla volutpat tellus nec varius hendrerit. Phasellus ut ex eu nibh consequat semper. Sed at justo fermentum, consequat lectus vel, rhoncus ex. Mauris eget eros non sapien volutpat placerat. Nullam commodo metus dolor, non imperdiet felis dapibus a. Suspendisse et pretium libero. Donec augue justo, porta non felis et, venenatis lacinia lectus. Fusce in elementum dolor. Nullam leo nibh, volutpat nec quam nec, vestibulum ornare nibh. Praesent nec blandit magna. Duis imperdiet augue ex, sed mattis quam mollis in. Aliquam nibh lorem, commodo commodo nibh vitae, rutrum scelerisque urna. Nullam venenatis lectus non risus maximus, eu consectetur odio tincidunt. Curabitur fermentum, diam non lacinia hendrerit, sapien elit iaculis enim, a ultrices mi sem eget sapien. Nulla facilisi. Phasellus eget egestas mauris, quis tristique tellus. Nullam quis arcu quis erat venenatis gravida. Proin ut nisi tincidunt, efficitur eros eget, aliquam dui. Ut vel facilisis sem. Cras gravida neque vitae mi ullamcorper, et auctor magna interdum. Nam maximus ullamcorper metus, quis tincidunt mauris facilisis id. Sed a augue eu velit laoreet scelerisque sit amet nec elit. Suspendisse luctus dapibus nulla a tincidunt. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nunc scelerisque enim vel metus suscipit gravida. Ut aliquam sapien et bibendum sodales. Nunc a elit sit amet arcu euismod vehicula. Vestibulum sit amet suscipit purus, ut posuere arcu. Proin vel ipsum ut odio sagittis mattis non ac ligula. Nullam aliquam felis vitae dapibus elementum. Donec ultrices nisl at euismod posuere. Aenean suscipit ligula ut porta ultricies. Etiam id posuere arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras in turpis sit amet velit ornare condimentum sed sit amet dui. Nunc ac velit nec augue pellentesque congue";

  

  @override
  Widget build(BuildContext context) {
    red = Theme.of(context).primaryColor;
    black = Theme.of(context).backgroundColor;
    white = Theme.of(context).accentColor;

    setState(() {
      projectGroups.clear();  
      children.clear();    
    });
    if(children.isEmpty) projectGroups.addAll([
      // C skarp
      ProjectGroup(
        area: "C skarp",
        projects: [
          Project(
            title: "Lorem",
            subtitle: subtitleText,
            imageSource: "assets/yeet/forfatter.jpg",
            bodyText: bodyTextText
          ),
          Project(
            title: "Ipsum",
            subtitle: subtitleText,
            imageSource: "assets/yeet/biler.jpg",
            bodyText: bodyTextText
          ),
        ]
      ),
      // Hurtig
      ProjectGroup(
        area: "Hurtig",
        projects: [
          Project(
            title: "Dolor",
            subtitle: subtitleText,
            imageSource: "assets/yeet/fisk.jpg",
            bodyText: bodyTextText
          ),
          Project(
            title: "Sit",
            subtitle: subtitleText,
            imageSource: "assets/yeet/navnet.jpg",
            bodyText: bodyTextText
          ),
        ]
      ),
      // Java manuskript
      ProjectGroup(
        area: "Java manuskript",
        projects: [
          Project(
            title: "Amet",
            subtitle: subtitleText,
            imageSource: "assets/yeet/ulrikdab.jpg",
            bodyText: bodyTextText
          ),
        ]
      )
    ]);
    
    
    projectGroups.forEach((i) {
      children.add
      (
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,15,0,15),
            child: Text(
              i.area, 
              style: TextStyle(fontWeight: FontWeight.bold, ), 
              textAlign: TextAlign.left,
            )
          ),
        )
      );
      children.addAll(i.projects.map((p) => projectButton(p)));
    });


    
    return Scaffold(
      appBar: AppBar(
        title: Text("Portfolio"),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: children,
            ),
          ),
        ]
      ),
    );
  }

  Widget projectButton(Project project) {
    return OutlineButton(
      borderSide: BorderSide(color: red, width: 2),
      splashColor: red,
      highlightedBorderColor: red,
      child: SizedBox(
        width: double.infinity,
        child: Text(project.title.toUpperCase(), style: TextStyle(color: white), textAlign: TextAlign.center,)
      ),
      onPressed: () { 
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectDetails(project: project)));
      }, // Navigate
    );
  }
}



