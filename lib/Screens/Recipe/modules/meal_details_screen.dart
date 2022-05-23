import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Recipe/components/components.dart';
import 'package:flutter_app/Screens/Recipe/models/meal_model.dart';


class MealDetailsScreen extends StatelessWidget {
  final Function toggleFavorites;
  final Function isFavorite;

  MealDetailsScreen(this.toggleFavorites, this.isFavorite);

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = MEALRecipes.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
        backgroundColor: firstColor,
        elevation: 0.0,
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [firstColor, secondColor, thirdColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [firstColor, secondColor, thirdColor],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)),
                  height: 320,
                  width: double.infinity,
                  child: Image.network(selectedMeal.mealImage),
                ),
                const SizedBox(
                  height: 17,
                ),
                Text(
                  'Орц',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 190,
                  child: ListView.builder(
                    itemBuilder: (context, index) => Card(
                      elevation: 20,
                      color: secondColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 17, vertical: 19),
                        child: Text(selectedMeal.ingredients[index],
                            style: Theme.of(context).textTheme.subtitle1),
                      ),
                    ),
                    itemCount: selectedMeal.ingredients.length,
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                Text(
                  'Cooking Steps',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.white),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 190,
                  child: ListView.builder(
                    itemBuilder: (context, index) => Card(
                      elevation: 20,
                      color: secondColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 12),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: firstColor,
                              child: Text(
                                '# ${(index + 1)}  ',
                                style: Theme.of(context).textTheme.subtitle1,
                                maxLines: 2,
                              ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Flexible(
                                fit: FlexFit.loose,
                                child: Text(
                                  selectedMeal.steps[index],
                                  style: Theme.of(context).textTheme.subtitle1,
                                  overflow: TextOverflow.fade,
                                  maxLines: 2,
                                  softWrap: false,
                                ))
                          ],
                        ),
                      ),
                    ),
                    itemCount: selectedMeal.steps.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child:
            Icon(isFavorite(mealId) ? Icons.favorite : Icons.favorite_border),
        onPressed: () => toggleFavorites(mealId),
      ),
    );
  }
}
