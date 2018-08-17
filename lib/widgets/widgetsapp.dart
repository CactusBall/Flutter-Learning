import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/baseline.dart';
import 'package:flutter_app/widgets/constrainerbox.dart';
import 'package:flutter_app/widgets/align.dart';
import 'package:flutter_app/widgets/aspectradio.dart';
import 'package:flutter_app/widgets/center.dart';
import 'package:flutter_app/widgets/container.dart';
import 'package:flutter_app/widgets/fittedbox.dart';
import 'package:flutter_app/widgets/gridview.dart';
import 'package:flutter_app/widgets/padding.dart';

const List<String> basicWidgets = [
  "Container",
  "Padding",
  "Center",
  "Align",
  "FitterBox",
  "AspectRadio",
  "ConstrainerBox",
  "BaseLine",
  "GridView",
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
        '/Padding': (_) => new PaddingBase(),
        '/Center':(_)=> new CenterBase(),
        '/Align':(_)=>new AlignBase(),
        '/FitterBox':(_)=> new FitterBoxBase(),
        '/AspectRadio':(_)=> new AspectRadioBase(),
        '/ConstrainerBox':(_)=>new ConstrainedBoxBase(),
        '/BaseLine':(_)=>new BaseLineBase(),
        '/GridView':(_)=>new GridViewBase(),
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
