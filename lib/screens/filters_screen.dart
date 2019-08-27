import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = "/filter-screen";

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;

  var _vegetarian = false;

  var _vegan = false;

  var _lactoseFree = false;

  Widget _buildSwitchListTile(String title, String description,
      bool currentValue, Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(description),
      value: _glutenFree,
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your filters"),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Adjust your meal selection",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                    "Gluten-free",
                    "Only include gluten-free meals.",
                    _glutenFree, (new_value) {
                  setState(() {
                    _glutenFree = new_value;
                  });
                }),
                _buildSwitchListTile(
                    "Lactose-free",
                    "Only include lactose-free meals.",
                    _lactoseFree, (new_value) {
                  setState(() {
                    _lactoseFree = new_value;
                  });
                }),
                _buildSwitchListTile(
                    "Vegetarian",
                    "Only include Vegetarian meals.",
                    _vegetarian, (new_value) {
                  setState(() {
                    _vegetarian = new_value;
                  });
                }),
                _buildSwitchListTile(
                    "Vegans",
                    "Only include vegan meals.",
                    _vegan, (new_value) {
                  setState(() {
                    _vegan = new_value;
                  });
                }),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
