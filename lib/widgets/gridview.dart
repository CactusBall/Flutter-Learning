import 'package:flutter/material.dart';

class GridViewBase extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('FitterBox'),
        leading: BackButton(),
      ),
      body: GridViewContent(),
    );
  }

}

class GridViewContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new GridView.count(
        crossAxisCount: 2,
        children:new List.generate(100, (index){
          return new Center(
            child: new Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline,
            ),
          );
        }),
    );
  }

}