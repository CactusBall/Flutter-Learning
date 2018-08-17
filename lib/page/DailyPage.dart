import 'package:flutter/material.dart';
import 'package:flutter_app/widget/DailyList.dart';

class DailyPage extends StatefulWidget {
  @override
  _DailyPageState createState() => new _DailyPageState();
}

class _DailyPageState extends State<DailyPage> {
  DateTime dateTime = new DateTime.now();

  final String _url = "http://gank.io/api/today";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new DailyList(
        url: _url,
      ),
    );
  }
}
