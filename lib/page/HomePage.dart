import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/page/ArticlePage.dart';
import 'package:flutter_app/page/DailyPage.dart';
import 'package:flutter_app/page/FeedPage.dart';
import 'package:flutter_app/widget/FWBottomNavigationBar.dart';
import 'package:flutter_app/widget/FWTitleBar.dart';
import 'package:flutter_app/widget/HomeDrawer.dart';

class HomePage extends StatelessWidget {
  static final String name = "home";

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
      child: new FWBottomNavigationBar(
        drawer: new HomeDrawer(),
        tabItems: [
          new Tab(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(Icons.home, size: 20.0),
                new Text(
                  "每日Gank",
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                )
              ],
            ),
          ),
          new Tab(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(Icons.category, size: 20.0),
                new Text(
                  "分类阅读",
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                )
              ],
            ),
          ),
          new Tab(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(Icons.whatshot, size: 20.0),
                new Text(
                  "闲读",
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                )
              ],
            ),
          ),
        ],
        tabViews: [
          new DailyPage(),
          new FeedPage(),
          new ArticlePage(),
        ],
        title: new FWTitleBar(
          "Gank",
          iconData: Icons.search,
          needRightLocalIcon: true,
          onPressed: () {},
        ),
      ),
    );
  }
}
