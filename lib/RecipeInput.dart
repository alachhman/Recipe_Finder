import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
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
    DynamicTheme.of(context).setBrightness(Theme.of(context).brightness == Brightness.dark? Brightness.light: Brightness.dark);
    setState(() {
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
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}