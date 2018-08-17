import 'package:flutter/material.dart';

class FitterBoxBase extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('FitterBox'),
        leading: BackButton(),
      ),
      body: FitterBoxContent(),
    );
  }
  
}

class FitterBoxContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return new Container(
       color: Colors.red,
       alignment: Alignment.center,
       child: new Row(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new Container(
                  color: Colors.amberAccent,
                  width: 100.0,
                  height: 100.0,
                  child: new FittedBox(
                    fit: BoxFit.contain,
                    alignment: Alignment.topLeft,
                    child: Text('Contain',),
                  ),
                ),
                new Container(
                  color: Colors.grey,
                  width: 100.0,
                  height: 100.0,
                  child: new FittedBox(
                    fit: BoxFit.none,
                    alignment: Alignment.topLeft,
                    child: Text('None',),
                  ),
                ),

                new Container(
                  color: Colors.yellow,
                  width: 100.0,
                  height: 100.0,
                  child: new FittedBox(
                    fit: BoxFit.cover,
                    alignment: Alignment.topLeft,
                    child: Text('Cover',),
                  ),
                ),
                new Container(
                  color: Colors.grey,
                  width: 100.0,
                  height: 100.0,
                  child: new FittedBox(
                    fit: BoxFit.fill,
                    alignment: Alignment.topLeft,
                    child: Text('Cover',),
                  ),
                ),

                new Container(
                  color: Colors.grey,
                  width: 100.0,
                  height: 100.0,
                  child: new FittedBox(
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.topLeft,
                    child: Text('Cover',),
                  ),
                ),
                new Container(
                  color: Colors.grey,
                  width: 100.0,
                  height: 100.0,
                  child: new FittedBox(
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topLeft,
                    child: Text('Cover',),
                  ),
                ),
              ],
            ),

            new Column(
              children: <Widget>[
                new Container(
                  color: Colors.amberAccent,
                  width: 100.0,
                  height: 100.0,
                  child: new FittedBox(
                    fit: BoxFit.none,
                    alignment: Alignment.center,
                    child: Text('Contain',),
                  ),
                ),
                new Container(
                  color: Colors.grey,
                  width: 100.0,
                  height: 100.0,
                  child: new FittedBox(
                    fit: BoxFit.none,
                    alignment: Alignment.topLeft,
                    child: Text('None',),
                  ),
                ),

                new Container(
                  color: Colors.yellow,
                  width: 100.0,
                  height: 100.0,
                  child: new FittedBox(
                    fit: BoxFit.none,
                    alignment: Alignment.bottomCenter,
                    child: Text('Cover',),
                  ),
                ),
                new Container(
                  color: Colors.grey,
                  width: 100.0,
                  height: 100.0,
                  child: new FittedBox(
                    fit: BoxFit.none,
                    alignment: Alignment.topRight,
                    child: Text('Cover',),
                  ),
                ),

                new Container(
                  color: Colors.grey,
                  width: 100.0,
                  height: 100.0,
                  child: new FittedBox(
                    fit: BoxFit.none,
                    alignment: Alignment.bottomLeft,
                    child: Text('Cover',),
                  ),
                ),
                new Container(
                  color: Colors.grey,
                  width: 100.0,
                  height: 100.0,
                  child: new FittedBox(
                    fit: BoxFit.none,
                    alignment: Alignment.bottomRight,
                    child: Text('Cover',),
                  ),
                ),
              ],
            ),
          ],
       ),
    );
  }
  
}