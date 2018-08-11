import 'package:flutter/material.dart';

//Container 子Widget
class ContainerBasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text('Container'),
        leading: new BackButton(),
      ),
      body: new ContainerContent(),
    );
  }
}

// Container 内部对齐方式
class ContainerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: new Wrap(
        children: <Widget>[
          new Container(
            child: new Text(
              'Hello World',
              style: new TextStyle(
                fontSize: 15.0,
              ),
            ),
            alignment: Alignment.center,
            margin: const EdgeInsets.all(5.0),
          ),
          new Container(
            child: new Container(
              color: Colors.yellow,
              child: new Text(
                'Hello World',
                style: new TextStyle(fontSize: 15.0),
              ),
            ),
            alignment: Alignment.center,
            color: Colors.lightGreen,
            height: 100.0,
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.all(5.0),
          ),
          new Container(
            child: new Container(
              color: Colors.yellow,
              child: new Text(
                'Hello World',
                style: new TextStyle(fontSize: 15.0),
              ),
            ),
            alignment: Alignment.center,
            margin: const EdgeInsets.all(5.0),
            height: 100.0,
            decoration: new BoxDecoration(
                gradient: const LinearGradient(
              colors: [
                Colors.lightBlueAccent,
                Colors.greenAccent,
                Colors.purple
              ],
            )),
          ),
          new Container(
            child: new Container(
              color: Colors.yellow,
              child: new Text(
                'Hello World',
                style: new TextStyle(fontSize: 15.0),
              ),
            ),
            alignment: Alignment.center,
            margin: const EdgeInsets.all(5.0),
            height: 100.0,
            decoration: new BoxDecoration(
                gradient: const LinearGradient(
              colors: [
                Colors.lightBlueAccent,
                Colors.greenAccent,
                Colors.purple
              ],
            )),
            foregroundDecoration: new BoxDecoration(
              border: new Border.all(
                  color: Colors.redAccent,
                  width: 15.0,
                  style: BorderStyle.solid),
            ),
          ),
          new Container(
            constraints: new BoxConstraints.expand(
              height:
                  Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
            ),
            decoration: new BoxDecoration(
                border: new Border.all(width: 2.0, color: Colors.red),
                color: Colors.grey,
                borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                image: new DecorationImage(
                  image: new ExactAssetImage('images/lake.jpg'),
                  centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                )),
            padding: const EdgeInsets.all(5.0),
            alignment: Alignment.center,
            transform: new Matrix4.rotationZ(0.1),
          )
        ],
      ),
    );
  }
}
