import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'Results.dart';
import 'SideBar.dart';
class RecipeInput extends StatefulWidget {
  RecipeInput({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _RecipeInputState createState() => _RecipeInputState();
}

class _RecipeInputState extends State<RecipeInput> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _counter++;
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void changeBrightness(BuildContext context) {
    setState(() {
      DynamicTheme.of(context).setBrightness(Theme.of(context).brightness == Brightness.dark? Brightness.light: Brightness.dark);
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
          child: SideBar()),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //onPressed: _incrementCounter,
        onPressed: ((){
          //changeBrightness(context);
        }),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}