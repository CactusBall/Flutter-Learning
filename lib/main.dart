import 'package:flutter/material.dart';
import 'package:flutter_app/container.dart';

void main() => runApp(MyApp());

const List<String> basicWidgets = [
  "Container",
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(
        title: 'Demo Home Page',
      ),
      routes: <String, WidgetBuilder>{
        '/Container': (_) => new ContainerBasic(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> layoutWidgets = [];
    layoutWidgets.addAll(basicWidgets);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new ListView.builder(
        itemBuilder: (context, i) {
          return new ListTile(
            title: new Center(
              child: new Container(
                child: new Text(
                  layoutWidgets[i],
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                margin: EdgeInsets.all(4.0),
              ),
            ),
            onTap: () {
              _navigateToPage(context, layoutWidgets[i]);
            },
          );
        },
        itemCount: layoutWidgets.length,
      ),
    );
  }
}

void _navigateToPage(BuildContext context, String page) {
  Navigator.of(context).pushNamed('/$page');
}
