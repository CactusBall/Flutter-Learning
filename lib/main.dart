import 'package:flutter/material.dart';
import 'package:flutter_app/page/HomePage.dart';
import 'package:flutter_app/theme/theme.dart';

void main() => runApp(new App());

class App extends StatefulWidget {
  @override
  State createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  AppTheme _appTheme = kAllAppThemes[0];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "GankIO",
      home: new HomePage(_appTheme, (theme) {
        setState(() {
          _appTheme = theme;
        });
      }),
      theme: _appTheme.theme,
    );
  }
}
