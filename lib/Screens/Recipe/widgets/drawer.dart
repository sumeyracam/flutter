import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/Screens/Recipe/components/components.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key, child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: thirdColor,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [firstColor, secondColor, thirdColor],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
            height: 150,
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            //alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Good Food , Good mood',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.subtitle1),
                const SizedBox(
                  height: 20,
                ),
                const Icon(Icons.dark_mode)
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
            child: ListTile(
              leading: const Icon(Icons.restaurant_menu),
              title: Text(
                'Menu',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/filter');
            },
            child: ListTile(
              leading: const Icon(Icons.filter_vintage),
              title: Text(
                'Set Recipes',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
