import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'RecipeInput.dart';
import 'main.dart';
class SideBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Anthony Lachhman"),
          accountEmail: Text("Lachhman.Anthony@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                ? Colors.blue
                : Colors.white,
            child: Text(
              "A",
              style: TextStyle(fontSize: 40.0),
            ),
          ),
        ),
        InkWell(
          child: ListTile(
            title: Text("Home"),
            trailing: Icon(Icons.list),
          ),
          onTap: (){
            Navigator.of(context).pop();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => RecipeInput(title: "Ingredient Input")));
          },
        ),
        Divider(),
        ListTile(
          title: Text("Profile"),
          trailing: Icon(Icons.person),
          onTap: (){
            DynamicTheme.of(context).setBrightness(Brightness.light);
          },
        ),
        Divider(),
        ListTile(
          title: Text("My Recipes"),
          trailing: Icon(Icons.apps),
          onTap: (){
            DynamicTheme.of(context).setBrightness(Brightness.dark);
          },
        ),
        Divider(),
        ListTile(
          title: Text("Favorites"),
          trailing: Icon(Icons.star),
        ),
        Divider(),
        ListTile(
          title: Text("Support"),
          trailing: Icon(Icons.supervisor_account),
        ),
        Divider(),
        ListTile(
          title: Text("Options"),
          trailing: Icon(Icons.settings),
        ),
        Divider(),
      ],
    );
  }
  void changeBrightness(BuildContext context) {
    DynamicTheme.of(context).setBrightness(Theme.of(context).brightness == Brightness.dark? Brightness.light: Brightness.dark);
  }
}

