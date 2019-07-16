import 'package:flutter/material.dart';

import 'SideBar.dart';

class UserPage extends StatefulWidget {
  UserPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Drawer(child: SideBar()),
        body: Center(
            child:
                Column()) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
