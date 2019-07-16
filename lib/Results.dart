import 'package:flutter/material.dart';

import 'SideBar.dart';

class Results extends StatefulWidget {
  Results({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
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
                Column(
                    children: <Widget>[
                      Text("results")
                    ],
                )
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
