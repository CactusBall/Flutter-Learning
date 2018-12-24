import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/page/ArticlePage.dart';
import 'package:flutter_app/page/DailyPage.dart';
import 'package:flutter_app/page/FeedPage.dart';
import 'package:flutter_app/theme/theme.dart';

class HomePage extends StatefulWidget {
  static final String name = "home";
  final AppTheme appTheme;
  final ValueChanged<AppTheme> onThemeChanged;

  HomePage(this.appTheme, this.onThemeChanged);

  @override
  State createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  Future<bool> _exitApp(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => new AlertDialog(
              content: new Text("退出"),
              actions: <Widget>[
                new FlatButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: new Text("取消")),
                new FlatButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: new Text("确定")),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          return _exitApp(context);
        },
        child: new Scaffold(
          body: _buildNetBody(),
          bottomNavigationBar: new BottomNavigationBar(
            currentIndex: _currentIndex,
            items: [
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.home), title: new Text("Daily")),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.category), title: new Text("Category")),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.whatshot), title: new Text("Writing")),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.settings), title: new Text("Settings"))
            ],
            type: BottomNavigationBarType.fixed,
            onTap: (int selected) {
              setState(() {
                this._currentIndex = selected;
              });
            },
          ),
        ));
  }

  Widget _buildNetBody() {
    final List<Widget> transitions = <Widget>[];
    transitions.add(new DailyPage());
    transitions.add(new FeedPage());
    transitions.add(new ArticlePage());
//    transitions.add(new AboutPage(widget.appTheme, widget.onThemeChanged));
    //transitions.add(new SearchPage());
    return new IndexedStack(
      children: transitions,
      index: _currentIndex,
    );
  }
}
