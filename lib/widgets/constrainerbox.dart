import 'package:flutter/material.dart';

class ConstrainedBoxBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Center'),
        leading: BackButton(),
      ),
      body: new ConstrainedBoxContent(),
    );
  }
}

class ConstrainedBoxContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 100.0,
        minHeight: 100.0,
        maxWidth: 150.0,
        maxHeight: 150.0,
      ),
      child: new Container(
        width: 200.0,
        height: 200.0,
        color: Colors.red,
      ),
    );
  }
}
