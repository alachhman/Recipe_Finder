import 'package:flutter/material.dart';
import 'RecipeInput.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

void main() async => runApp(new RecipeFinder());

class RecipeFinder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new DynamicTheme(
        defaultBrightness: Brightness.dark,
        data: (brightness) => new ThemeData(
          primarySwatch: Colors.blue,
          brightness: brightness,
        ),
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
            title: 'Recipe Finder',
            home: new RecipeInput(title: 'Ingredient Input',),
            theme: theme,
            debugShowCheckedModeBanner: false,
          );
        }
    );
  }
}



