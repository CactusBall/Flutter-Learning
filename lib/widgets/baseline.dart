import 'package:flutter/material.dart';

class BaseLineBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Center'),
        leading: BackButton(),
      ),
      body: new BaseLineContent(),
    );
  }
}

class BaseLineContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Baseline(
            baseline: 50.0, 
            baselineType: TextBaseline.alphabetic,
            child: Text('BaseLine jl'),
        )
      ],
    );
  }

}