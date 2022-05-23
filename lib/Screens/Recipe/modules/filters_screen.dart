import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Recipe/components/components.dart';
import 'package:flutter_app/Screens/Recipe/models/meal_model.dart';
import 'package:flutter_app/Screens/Recipe/widgets/drawer.dart';
import 'package:flutter_app/Screens/Recipe/widgets/meal_item.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool glutenFree = false;
  bool vegetarian = false;
  bool vegan = false;
  bool isLactoseFree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        backgroundColor: firstColor,
        elevation: 0.0,
      ),
      drawer: const MyDrawer(),
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [firstColor, secondColor, thirdColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  height: 50,
                  child: Text(
                    'set the recipes',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      SwitchListTile(
                        value: glutenFree,
                        onChanged: (newValue) {
                          setState(() {
                            glutenFree = newValue;
                          });
                        },
                        title: Text(
                          'Gluten Free',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        subtitle: Text(
                          'Meals that is Gluten Free',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      SwitchListTile(
                        value: vegetarian,
                        onChanged: (newValue) {
                          setState(() {
                            vegetarian = newValue;
                          });
                        },
                        title: Text(
                          'vegetarian ',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        subtitle: Text(
                          'Meals that is only vegetarian',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      SwitchListTile(
                        value: vegan,
                        onChanged: (newValue) {
                          setState(() {
                            vegan = newValue;
                          });
                        },
                        title: Text(
                          'Vegan',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        subtitle: Text(
                          'Meals that is only Vegan',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      SwitchListTile(
                        value: isLactoseFree,
                        onChanged: (newValue) {
                          setState(() {
                            isLactoseFree = newValue;
                          });
                        },
                        title: Text(
                          'LactoseFree',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        subtitle: Text(
                          'Meals that is Lactose Free',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
