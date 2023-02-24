import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({Key? key}) : super(key: key);
  static const routeName = '/filters_screen';

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegatarian = false;
  var _vegan = false;
  var _lactoseFree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Filters'),),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text("Adjust Your Meal Selection",style: Theme.of(context).textTheme.titleLarge,),
          ),
          Expanded(child: ListView(
              children: [
                SwitchListTile(
                    title: Text('Gluten-free'),
                    value: _glutenFree,
                    subtitle: Text('Only Include Gluten free meals.'),
                    onChanged: (newValue){
                      setState(() {
                        _glutenFree = newValue;
                      });
                    }
                ),
                SwitchListTile(
                    title: Text('Lactose-free'),
                    value: _lactoseFree,
                    subtitle: Text('Only Include Lactose free meals.'),
                    onChanged: (newValue){
                      setState(() {
                        _lactoseFree = newValue;
                      });
                    }
                ),
                SwitchListTile(
                    title: Text('Vegetarian'),
                    value: _vegatarian,
                    subtitle: Text('Only Include Vegetarian meals.'),
                    onChanged: (newValue){
                      setState(() {
                        _vegatarian = newValue;
                      });
                    }
                ),
                SwitchListTile(
                    title: Text('Vegan'),
                    value: _vegan,
                    subtitle: Text('Only Include Vegan meals.'),
                    onChanged: (newValue){
                      setState(() {
                        _vegan = newValue;
                      });
                    }
                ),
              ],
            ),
          )
        ],
      )

    );
  }
}
