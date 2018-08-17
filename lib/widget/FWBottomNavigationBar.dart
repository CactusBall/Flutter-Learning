import 'package:flutter/material.dart';

class FWBottomNavigationBar extends StatefulWidget {
  final List<Widget> tabItems;
  final List<Widget> tabViews;

  final Color backgroundColor;
  final Color indicatorColor;
  final Widget title;
  final Widget drawer;

  FWBottomNavigationBar({
    Key key,
    this.tabItems,
    this.tabViews,
    this.backgroundColor,
    this.indicatorColor,
    this.title,
    this.drawer,
  }) : super(key: key);

  @override
  _FWBottomNavigationBarState createState() => new _FWBottomNavigationBarState(
        tabItems,
        tabViews,
        indicatorColor,
        title,
        drawer,
      );
}

class _FWBottomNavigationBarState extends State<FWBottomNavigationBar>
    with SingleTickerProviderStateMixin {
  final List<Widget> _tabItems;

  final List<Widget> _tabViews;

  final Color _indicatorColor;

  final Widget _title;

  final Widget _drawer;

  _FWBottomNavigationBarState(
    this._tabItems,
    this._tabViews,
    this._indicatorColor,
    this._title,
    this._drawer,
  ) : super();

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        new TabController(length: widget.tabItems.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: _drawer,
      appBar: new AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: _title,
      ),
      body: new TabBarView(
        children: _tabViews,
        controller: _tabController,
      ),
      bottomNavigationBar: new Material(
        color: Theme.of(context).primaryColor,
        child: new TabBar(
          tabs: _tabItems,
          controller: _tabController,
          indicatorColor: _indicatorColor,
        ),
      ),
    );
  }
}
