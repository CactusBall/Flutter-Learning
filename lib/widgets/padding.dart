import 'package:flutter/material.dart';

class PaddingBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Padding'),
        leading: BackButton(),
      ),
      body: new PaddingContent(),
    );
  }
}

class PaddingContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(10.0),
      child: new Wrap(
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Card(
              child: const Text('Hello World'),
            ),
          ),
          new Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 50.0, 40.0, 40.0),
              child: const Text('Hello World'),
          )
        ],
      ),
    );
  }
}
