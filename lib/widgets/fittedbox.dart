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
       color: Colors.amberAccent,
       alignment: Alignment.center,
       child: new FittedBox(
         fit: BoxFit.fill,
         alignment: Alignment.center,
         child: Text('Hello World'),
       ),
     );
  }
  
}