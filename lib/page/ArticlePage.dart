import 'package:flutter/material.dart';

class ArticlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text("每日Gank"),
        actions: <Widget>[
          new Padding(padding: const EdgeInsets.all(4.0),
            child: new IconButton(
                icon: new Icon(Icons.calendar_today), onPressed: null),
          ),
          new Padding(padding: const EdgeInsets.all(4.0),
            child: new IconButton(
              icon: new Icon(Icons.search),
              onPressed: () {


              },),),
        ],
      ),
      body: Text("每日Gank"),
    );
  }

}