// ignore_for_file: unnecessary_const
import 'package:flutter/material.dart';

class CategoryModel {
  final String id;
  final String name;
  final String image;

  const CategoryModel(
      {required this.id, required this.name, required this.image});
}



const mainRecipes = const [
  CategoryModel(
      id: '1',
      name: 'Breakfast',
      image:
          "assets/images/breakfast.png",),
  CategoryModel(
      id: '2',
      name: 'Lunch',
      image:
          "assets/images/lunch.png"),
  CategoryModel(
      id: '3',
      name: 'Dinner',
      image:
          "assets/images/dinner.png"),
  
];

// ignore: constant_identifier_names
const recipesForYou = const [
  CategoryModel(
      id: '4',
      name: 'Fries ',
      image:
          "assets/images/fries.png"),
  CategoryModel(
      id: '5',
      name: 'Pastries',
      image:
         "assets/images/pastries.png"),
  CategoryModel(
      id: '6',
      name: 'Salad',
      image:
          "assets/images/salad.png"),
];
const liquidRecipes = const [
  CategoryModel(
      id: '7',
      name: 'Cold Drinks',
      image:
          "assets/images/colddrinks.png"),
  CategoryModel(
      id: '8',
      name: 'Hot Drinks',
      image:
          "assets/images/hotdrinks.png"),
  CategoryModel(
      id: '9',
      name: 'Coctails',
      image:
          "assets/images/coctails.png"),
];
