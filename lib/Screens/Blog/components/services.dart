import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';

/*
class CrudMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<void> addData(blogData) async {
   
    await _firestore.collection("blogs").add(blogData).catchError(
      (e) {
        Fluttertoast.showToast(msg: "Error: "+ e.toString());
      },
    );
  }
*/
class CrudMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<void> addData(blogData) async {
    //print(blogData);
    FirebaseFirestore.instance
        .collection("blogs")
        .add(blogData)
        .then((value) => print(value))
        .catchError((e) {
      Fluttertoast.showToast(msg: "$e");
    });
  }

  getData() async {
    return _firestore.collection("blogs").get();
  }
}
