// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

enum Complexty { Simple, Difficult, Hard }

enum Effort { Little, Min, Max }

class MealModel {
  final String id;
  final String title;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final String mealImage;
  final int duration;
  final Complexty complexity;
  final Effort effort;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  
const MealModel({
    required this.id,
    required this.title,
    required this.categories,
    required this.ingredients,
    required this.steps,
    required this.mealImage,
    required this.duration,
    required this.complexity,
    required this.effort,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
  });
}

const MEALRecipes = [
 MealModel(
    id: '1',
    categories: [
      '1',
    ],
    title: 'Classic Omelet and Greens',
    effort: Effort.Little,
    complexity: Complexty.Simple,
    mealImage:
        "assets/images/1.png",
    duration: 10,
    ingredients: [
    
'3 tbsp. olive oil, divided',
'1 yellow onion, finely chopped',
'8 large eggs',
'Kosher salt',
'2 tbsp. unsalted butter',
'1 oz. Parmesan, finely grated',
'2 tbsp. fresh lemon juice',
'3 oz. baby spinach'
    ],
    steps: [
      'Heat 1 tablespoon oil in large nonstick skillet on medium. Add onion and sauté until tender, about 6 minutes. Transfer to a small bowl. ',
      'In a large bowl, whisk together eggs, 1 tablespoon water and 1/2 teaspoon salt.',
      'Return skillet to medium and add butter. Add eggs and cook, stirring constantly with rubber spatula, until eggs are partially set.',
      'Turn heat to low and cover pan tightly, cooking until eggs are just set, 4 to 5 minutes. Top with Parmesan and cooked onion; fold in half.',
      'In a medium bowl, whisk together lemon juice and remaining 2 tablespoons olive oil. Toss spinach with vinaigrette and serve with omelet.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  MealModel(
    id: '2',
    categories: [
      '1','4',
    ],
    title: 'French Toast',
    effort: Effort.Min,
    complexity: Complexty.Difficult,
    mealImage:
        "assets/images/3.png",
    duration: 15,
    ingredients: [
      ' 6 large eggs',
      ' 6 large eggs1 1/2 c. whole milk',
     ' 1 1/2 tsp. ground cinnamon',
     ' 1 1/2 tsp. pure vanilla extract',
      '4 tbsp. unsalted butter',
     ' Yogurt, berries, and pure maple syrup or honey, for serving'
    ],
    steps: [
      'IIn large, shallow bowl, whisk together eggs, milk, cinnamon, and vanilla.',
      'Working in batches, place 2 bread slices in egg mixture and let soak 2 minutes. Flip and soak 1 minute more (both sides of bread should be totally coated in mixture).'
    'Meanwhile, heat 1 tablespoon butter in large nonstick skillet on medium-low. Once melted, add soaked bread and cook until golden brown, 1 to 3 minutes per side; transfer to wire rack. While toast is cooking, soak next batch of challah slices.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
 
 MealModel(
    id: '3',
    categories: [
      '1',
    ],
    title: 'Instant Oatmeal With Cranberries and Pecans',
    effort: Effort.Little,
    complexity: Complexty.Simple,
    mealImage:
        "assets/images/2.png",
    duration: 10,
    ingredients: [
      ' 1/4 c. quick oats',
      ' 1 tbsp. dried cranberries',
     ' 1 tbsp. chopped toasted pecans',
     ' 1/2 tsp. brown sugar',
      'Ground cinnamon',
     ' Grated orange zest',
      ' Kosher salt'
    ],
    steps: [
      'In bowl, place quick oats, dried cranberries and chopped toasted pecans, brown sugar and pinch each of ground cinnamon, grated orange zest and salt.',
      'Add 1/2 to 3/4 cup just-boiling water. Let sit 1 min. Stir and eat.',
      'Meanwhile, heat 1 tablespoon butter in large nonstick skillet on medium-low. Once melted, add soaked bread and cook until golden brown, 1 to 3 minutes per side; transfer to wire rack. While toast is cooking, soak next batch of challah slices.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree:false
  ),

  MealModel(
    id: '4',
    categories: [
      '1','7'
    ],
    title: 'Fruit Smoothie',
    effort: Effort.Min,
    complexity: Complexty.Simple,
    mealImage:
        "assets/images/4.png",
    duration: 5,
    ingredients: [
      ' L1/4 c. milk',
      '  1/2 c. plain yogurt',
     '2 c. fresh summer fruit (blackberries, raspberries, hulled strawberries, chopped peaches, and/or nectarines), chilled',
     ' Dry ingredients (seeds, protein powders)',
      'Ice + other frozen ingredients'
    ],
    steps: [
      
    'In a blender, add ingredients in the order they are listed. Purée ingredients until smooth.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

MealModel(
    id: '5',
    categories: [
      '1','2',
    ],
    title: 'Smashed Avocado Toast With Egg',
    effort: Effort.Min,
    complexity: Complexty.Simple,
    mealImage:
        "assets/images/5.png",
    duration: 15,
    ingredients: [
    
'1 ripe avocado',
'1 tbsp. fresh lemon juice',
'Kosher salt and pepper',
'4 slices bread, toasted',
'4 hard-boiled eggs, peeled and sliced',
'2 large eggs'
'1 bunch small multicolored radishes, thinly sliced',
'Chopped fresh chives and sesame seeds, for serving'
    ],
    steps: [
      'In medium bowl, smash avocado with lemon juice and 1/4 teaspoon each salt and pepper.',
      'Spread on toast and top with eggs and radishes and sprinkle with chives and sesame seeds. '
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
 MealModel(
    id: '6',
    categories: [
      '1','2','5'
    ],
    title: 'Zucchini Bread',
    effort: Effort.Max,
    complexity: Complexty.Difficult,
    mealImage:
        "assets/images/6.png",
    duration: 45,
    ingredients: [
    
'3/4 c. olive oil (or canola oil), plus more for pan',
'1 3/4 c. all-purpose flour',
'1 tsp. ground cinnamon',
'1/2 tsp. baking soda',
'1/2 tsp. baking powder',
'1/2 tsp. kosher salt',
'1/4 tsp. freshly grated nutmeg',
'2 large eggs'
'1/2 c. packed light brown sugar',
'1/4 c. granulated sugar',
'1 tsp. pure vanilla extract',
'1/2 lb. small zucchini (about 2)',
'1 c. walnuts, roughly chopped'
    ],
    steps: [
      'Heat oven to 350°F. Lightly oil 8 1/2- by 4 1/2-inch loaf pan. Line with parchment paper, leaving overhang on 2 long sides; lightly oil paper. ',
      'In medium bowl, whisk together flour, cinnamon, baking soda, baking powder, salt and nutmeg.',
      'In large bowl, beat eggs. Add sugars and oil, beat until combined, then mix in vanilla. Add dry ingredients, mixing just until incorporated.',
      'Grate zucchini on large holes of box grater and fold into batter along with 1/2 cup walnuts. Transfer to prepared pan and sprinkle with remaining 1/2 cup walnuts. Bake until wooden pick inserted into center comes out clean, 65 to 75 minutes. Let cool in pan 15 minutes, then use overhangs to transfer to wire rack to cool completely.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),

MealModel(
    id: '6',
    categories: [
      '1','7'
    ],
    title: 'Coconut Raspberry Smoothie',
    effort: Effort.Min,
    complexity: Complexty.Simple,
    mealImage:
        "assets/images/7.png",
    duration: 5,
    ingredients: [
      ' 1/2 c. low-fat milk',
      ' 1/2 c. low-fat coconut-flavored yogurt',
     '2 c. frozen raspberries',
     ' 2 bananas, peeled and cut into pieces',
      'Toasted coconut and raspberries, for serving'
    ],
    steps: [
      
    'Using immersion blender, blend together milk and coconut-flavored yogurt with frozen raspberries and bananas.',
    'Serve topped with toasted coconut and raspberries.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

MealModel(
    id: '8',
    categories: [
      '2','3','6'
    ],
    title: 'Tofu Broccoli Bowls with Carrot Ginger Dressing',
    effort: Effort.Min,
    complexity: Complexty.Difficult,
    mealImage:
        "assets/images/8.png",
    duration: 25,
    ingredients: [
    
'2 cups cooked brown rice, cooked on the stove or in the Instant Pot',
'1 recipe Air Fryer Broccoli or Roasted Broccoli',
'1 recipe Air Fryer Tofu or Baked Tofu',
'1 large avocado, sliced',
'Carrot Ginger Dressing, for drizzling',
'Thinly sliced daikon radish, or red radish'
'Microgreens or a few salad greens',
'Sesame seeds,red pepper,salt'
    ],
    steps: [
      'Assemble each bowl with the rice, broccoli, tofu, and avocado.',
      'Drizzle with the dressing and top with radish slices, microgreens, sesame seeds, and red pepper flakes, if desired. Season to taste with sea salt and serve with the remaining dressing on the side.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),


MealModel(
    id: '9',
    categories: [
      '9'
    ],
    title: 'Mojito',
    effort: Effort.Min,
    complexity: Complexty.Difficult,
    mealImage:
        "assets/images/9.png",
    duration: 10,
    ingredients: [
    
'3 mint leaves',
'1/2 ounce simple syrup',
'2 ounces white rum',
'3/4 ounce lime juice, freshly squeezed',
'Club soda, to top',
'Garnish: mint sprig'
'Garnish: lime wheel'
    ],
    steps: [
      'Lightly muddle the mint with the simple syrup in a shaker.',
      'Add the rum, lime juice and ice, and give it a brief shake, then strain into a highball glass over fresh ice. Alternatively, you can use pebble ice instead and gently swizzle it all together.',
       'Top with the club soda.',
       'Garnish with a mint sprig and lime wheel.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),

MealModel(
    id: '10',
    categories: [
      '9'
    ],
    title: 'Cosmopolitan',
    effort: Effort.Min,
    complexity: Complexty.Difficult,
    mealImage:
        "assets/images/10.png",
    duration: 10,
    ingredients: [
    
'1 1/2 ounces citron vodka',
'3/4 ounce Cointreau',
'3/4 ounce lime juice, freshly squeezed',
'1/2 ounce cranberry juice cocktail',
'Garnish: lime wedge'
    ],
    steps: [
      'Add the vodka, Cointreau, lime juice, and cranberry juice cocktail into a shaker with ice and shake until well-chilled.',
      'Strain into a chilled cocktail glass',
       'Garnish with a lime wedge.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),

  MealModel(
    id: '11',
    categories: [
      '8'
    ],
    title: 'Affogato Coffee',
    effort: Effort.Min,
    complexity: Complexty.Difficult,
    mealImage:
        "assets/images/11.png",
    duration: 10,
    ingredients: [
    
'1 scoop vanilla gelato, or ice cream',
'2 ounces hot espresso, or strongly brewed hot coffee',
'Grated chocolate, for garnish'
    ],
    steps: [
      'Gather the ingredients.',
      'In a chilled glass or dessert dish, place a large scoop of vanilla gelato or ice cream.',
       'Slowly pour the espresso or coffee over the ice cream.'
       'Garnish with shaved or grated chocolate, and serve with a spoon.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),


MealModel(
    id: '12',
    categories: [
      '2','3',
    ],
    title: 'Swiss Chard Pasta',
    effort: Effort.Min,
    complexity: Complexty.Difficult,
    mealImage:
        "assets/images/12.png",
    duration: 25,
    ingredients: [
    
'12 ounces whole grain fusilli pasta',
'3 tablespoons extra-virgin olive oil, divided',
'2 bunches Swiss chard, stems removed and thinly sliced, leaves chopped',
'4 garlic cloves, thinly sliced',
'½ teaspoon sea salt',
'3 tablespoons lemon juice',
'½ cup caramelized onions, optional*',
'Pinches of red pepper flakes',
'⅓ cup golden raisins',
'⅓ cup toasted hazelnuts, chopped',
'¼ cup shaved pecorino cheese',
'Microgreens, optional, for garnish',
'Freshly ground black pepper',
    ],
    steps: [
      'Bring a large pot of salted water to a boil. Prepare the pasta according to the package directions, cooking until al dente. Before draining the pasta, scoop out 1 cup of the starchy pasta water and set aside. Drain the pasta.',
      'Heat 1 tablespoon of the oil in a large skillet over medium heat. Add the chard stems and cook for 1 to 2 minutes, or until they begin to soften. Add the chard leaves, garlic, salt, and several grinds of pepper, and sauté for 1 to 2 minutes, or until the leaves are wilted. ',
   'Add the pasta, the remaining 2 tablespoons olive oil, the lemon juice, caramelized onions, if using, red pepper flakes, and ½ cup of the reserved pasta water, and toss. Add the raisins and hazelnuts and toss again. If the pasta is dry, add more of the reserved pasta water. Top with the cheese, season to taste, and garnish with microgreens, if desired.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),



];
