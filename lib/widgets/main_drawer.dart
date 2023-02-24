import 'package:flutter/material.dart';
import '../screens/filters_screen.dart';
class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Drawer(
        child: Column(children: [
          Container(
            height: 170,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text('Cooking Up!',style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Theme.of(context).primaryColor,
            ),),
          ),
          SizedBox(height: 20,),
          ListTile(
            leading: Icon(Icons.restaurant, size: 26,),
            title: Text('Meals', style: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.w700,
              fontSize: 24,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/'); //pushReplacementNamed deletes the stack of pages. pages k uper pages aati memory consume karti hai.
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, size: 26,),
            title: Text('Filters', style: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
            },
          ),
        ],)
    );
  }
}
