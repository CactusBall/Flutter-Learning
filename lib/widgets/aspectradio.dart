import 'package:flutter/material.dart';

class AspectRadioBase extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('AspectRadio'),
        leading: BackButton(),
      ),
      body: AspectRadioContent(),
    );
  }
}

class AspectRadioContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 250.0,
      child: new AspectRatio(
          aspectRatio: 0.6,
          child: new Container(
            color: Colors.yellow,
          ),
      ),
    );
  }
  
}