import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new Container(
        color: Theme.of(context).primaryColor,
        child: new SingleChildScrollView(
          child: new Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: new Column(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: new Text(
                    "FengWei",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.0,
                    ),
                  ),
                  accountEmail: new Text(
                    "1034384151@qq.com",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 20.0,
                    ),
                  ),
                  currentAccountPicture: new GestureDetector(
                    onTap: () {},
                    child: new CircleAvatar(
                      backgroundImage: new NetworkImage(
                          "https://avatars0.githubusercontent.com/u/16863687?s=460&v=4"),
                    ),
                  ),
                  decoration: new BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                new ListTile(
                  title: Text(
                    "关于",
                    style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {},
                ),
                new ListTile(
                  title: Text(
                    "切换主题",
                    style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {},
                ),
                new ListTile(
                  title: Text(
                    "切换语言",
                    style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {},
                ),
                new ListTile(
                  title: Text(
                    "检查更新",
                    style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
