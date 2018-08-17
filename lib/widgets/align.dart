import 'package:flutter/material.dart';

class AlignBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: const Text('Align'),
        leading: BackButton(),
      ),
      body: new AlignContent(),
    );
  }
}

class AlignContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Align(
        alignment: const Alignment(0.0, 0.5),
        widthFactor: 4.0,
        heightFactor: 4.0,
        child: Container(
          child: Text('Hello World'),
          color: Colors.red,
        ),
      ),
      color: Colors.teal,
    );
  }

}