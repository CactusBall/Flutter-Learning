import 'package:flutter/material.dart';

class CenterBase extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Center'),
        leading: BackButton(),
      ),
      body: new CenterContent(),
    );
  }
}


class CenterContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: const Text('Hello World'),
    );
  }

}