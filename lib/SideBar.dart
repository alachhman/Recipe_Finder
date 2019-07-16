import 'package:flutter/material.dart';
import 'RecipeInput.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'UserPage.dart';

class SideBar extends StatefulWidget {
  @override
  SideBarState createState() => SideBarState();
}

class SideBarState extends State<SideBar> {
  String buttonText = "Switch to Dark Mode";
  Icon icon = Icon(Icons.wb_sunny);/*Icon(Icons.brightness_3);*/
  @override
  void initState() {
    super.initState();/*
    if(Theme.of(context).brightness == Brightness.dark){
      buttonText = "Switch to Light Mode";
      icon = Icon(Icons.wb_sunny);
    }else{
      buttonText = "Switch to Dark Mode";
      icon = Icon(Icons.brightness_3);
    }*/
  }
  @override
  Widget build(BuildContext context) {
    String username = "Anthony Lachhman";
    String initial = username.substring(0, 1);
    String email = "Lachhman.Anthony@gmail.com";
    bool Default = false;

    return Column(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text(username),
          accountEmail: Text(email),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Theme
                .of(context)
                .platform == TargetPlatform.iOS
                ? Colors.blue
                : Colors.white,
            child: Text(
              initial,
              style: TextStyle(fontSize: 40.0),
            ),
          ),
        ),
        InkWell(
          child: ListTile(
            title: Text("Home"),
            trailing: Icon(Icons.list),
          ),
          onTap: () {
            Navigator.of(context).dispose();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) =>
                    RecipeInput(title: "Ingredient Input")));
          },
        ),
        Divider(),
        ListTile(
          title: Text("Profile"),
          trailing: Icon(Icons.person),
          onTap: () {
            Navigator.of(context).dispose();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) =>
                    UserPage(title: "Profile")));
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
        ListTile(
          title: Text(buttonText),
          trailing: icon,
          onTap: (){
            changeBrightness(context);
            setState(() {
              if(Theme.of(context).brightness != Brightness.dark){
                buttonText = "Switch to Light Mode";
                icon = Icon(Icons.wb_sunny);
              }else{
                buttonText = "Switch to Dark Mode";
                icon = Icon(Icons.brightness_3);
              }
            });
          },
        ),
      ],
    );
  }

  void changeBrightness(BuildContext context) {
    DynamicTheme.of(context).setBrightness(Theme
        .of(context)
        .brightness == Brightness.dark ? Brightness.light : Brightness.dark);
  }
}

