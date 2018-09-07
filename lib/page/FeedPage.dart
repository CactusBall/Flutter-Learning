import 'package:flutter/material.dart';
import 'package:flutter_app/common/utils/FeedList.dart';

class FeedPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new FeedPageState();
}

class FeedPageState extends State<FeedPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: _allPages.length,
      child: Scaffold(
        appBar: new AppBar(
          bottom: new TabBar(
            isScrollable: true,
            tabs: _allPages.map((page) {
              return new Tab(
                text: page.text,
              );
            }).toList(),
          ),
        ),
        body: new TabBarView(
            children: _allPages.map((page) {
          return page.feedList;
        }).toList()),
      ),
    );
  }
}

class _Page {
  _Page({this.icon, this.text, this.feedList});

  final IconData icon;
  final String text;
  final FeedList feedList;
}

final List<_Page> _allPages = <_Page>[
  new _Page(text: "all", feedList: new FeedList(feedType: ('all'))),
  new _Page(text: "Android", feedList: new FeedList(feedType: ('Android'))),
  new _Page(text: "瞎推荐", feedList: new FeedList(feedType: ('瞎推荐'))),
  new _Page(text: "iOS", feedList: new FeedList(feedType: ('iOS'))),
  new _Page(text: "前端", feedList: new FeedList(feedType: ('前端'))),
  new _Page(text: "拓展资源", feedList: new FeedList(feedType: ('拓展资源'))),
  new _Page(text: "App", feedList: new FeedList(feedType: ('App'))),
  new _Page(text: "休息视频", feedList: new FeedList(feedType: ('休息视频'))),
  new _Page(text: "福利", feedList: new FeedList(feedType: ('福利')))
];
