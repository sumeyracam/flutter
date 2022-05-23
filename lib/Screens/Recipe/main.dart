import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Recipe/models/meal_model.dart';
import 'package:flutter_app/Screens/Recipe/modules/category_meal_screen.dart';
import 'package:flutter_app/Screens/Recipe/modules/filters_screen.dart';
import 'package:flutter_app/Screens/Recipe/modules/home_screen.dart';
import 'package:flutter_app/Screens/Recipe/modules/meal_details_screen.dart';


void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatefulWidget {
  @override
  State<RecipeApp> createState() => _RecipeAppState();
}

class _RecipeAppState extends State<RecipeApp> {
  List<MealModel> favorites = [];


  void toggleFavorits(String mealId) {
    final existingMeal = favorites.indexWhere((meal) => meal.id == mealId);

    if (existingMeal >= 0) {
      setState(() {
        favorites.removeAt(existingMeal);
      });
    } else {
      setState(() {
        favorites.add(MEALRecipes.firstWhere((meal) => meal.id == mealId));
      });
    }
  }

  bool isFavorites(String id) {
    return favorites.any((meal) => meal.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                subtitle1: const TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
          appBarTheme: AppBarTheme(
            // ignore: deprecated_member_use
            textTheme: ThemeData.light().textTheme.copyWith(
                  subtitle2: const TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          )),
     
      routes: {
        '/category_meal': (context) => CategoryMealScreen(),
        '/meal_details': (context) => MealDetailsScreen(toggleFavorits, isFavorites),
        '/filter': (context) => FilterScreen(),
        '/': (context) => HomeScreen(favorites),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
