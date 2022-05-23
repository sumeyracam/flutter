import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app/Screens/Recipe/models/meal_model.dart';

class CrudMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  getrecipe() async {
    return _firestore.collection("recipe").get();
  }

  getcategory() async {
    return _firestore.collection("category").get();
  }
}

/*

class FirebaseDataSource {
 final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  FirebaseStorage storage = FirebaseStorage.instance;
  CollectionReference recipes =
      FirebaseFirestore.instance.collection('recipes');

  Future<List<MealModel>> fetchRecipeList() async {
    QuerySnapshot querySnapshot = await recipes.get();

    final allData = querySnapshot.docs
        .map((doc) => RecipeModel.fromFirestore(doc))
        .toList();

    return allData;
  }
}

*/