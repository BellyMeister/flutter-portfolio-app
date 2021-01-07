import 'package:flutter/material.dart';
import 'package:flutter_version_of_xamarin_app/Portfolio.dart';
import 'extensions.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  bool alternateColors = true;
  String primaryHex = alternateColors ? "E07A5F" : "db162f";
  String accentHex = alternateColors ? "F4F1DE" : "F6E8EA";
  String backgroundHex = alternateColors ? "292A3D" : "262626";
    return MaterialApp(
      title: 'Flutter version of Xamarin app',
      theme: ThemeData(
        primaryColor: HexColor.fromHex(primaryHex),
        accentColor: HexColor.fromHex(accentHex),
        backgroundColor: HexColor.fromHex(backgroundHex),
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: HexColor.fromHex(accentHex),
          displayColor: HexColor.fromHex(accentHex),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'CV'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
  var primaryC = Theme.of(context).primaryColor;
  var backgroundC = Theme.of(context).backgroundColor;
  var accentC = Theme.of(context).accentColor;
  String bodyText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget sollicitudin ligula. Sed tristique eros a purus porttitor euismod. In volutpat rutrum urna in tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget sollicitudin ligula. Sed tristique eros a purus porttitor euismod. In volutpat rutrum urna in tincidunt.";

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Lorem Ipsum", style: TextStyle(color: primaryC, fontSize: 30, fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30,5,0,0),
                      child: Text("Lorem Ipsum", style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,10,0,10),
                  child: Image.asset('assets/yeet/callmecarsoncrying.jpg'),
                ),
                Text(bodyText, style: TextStyle(fontSize:  16)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,20,0,20),
                  child: SizedBox(
                    width: double.infinity,
                    child: FlatButton(
                      child: Text("Portfolio", style: TextStyle(color: accentC)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Portfolio()));
                      },
                      color: primaryC,
                    ),
                  ),
                ),
                Text("$bodyText $bodyText", style: TextStyle(fontSize: 16),)
              ],
            ),
          ),
        ]
      ),
    );
  }
}
