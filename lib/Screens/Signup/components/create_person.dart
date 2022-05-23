import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Home/home_screen.dart';

import 'package:flutter_app/Screens/Signup/components/background.dart';

import 'package:flutter_app/Service/auth.dart';

import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/components/text_field_container.dart';
import 'package:flutter_app/constants.dart';

import 'package:fluttertoast/fluttertoast.dart';

class CreatePerson extends StatefulWidget {
  const CreatePerson({Key? key}) : super(key: key);

  @override
  State<CreatePerson> createState() => _CreatePersonState();
}

class _CreatePersonState extends State<CreatePerson> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final AuthService _authService = AuthService();
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "USER DETAILS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              TextFieldContainer(
                child: TextField(
                  autofocus: true,
                  controller: _fullNameController,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    hintText: "Your Name and Surname",
                    icon: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              TextFieldContainer(
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: _ageController,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    hintText: "Your Age",
                    icon: Icon(
                      Icons.numbers,
                      color: kPrimaryColor,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              TextFieldContainer(
                child: TextField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  controller: _heightController,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    hintText: "Your Height",
                    icon: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              TextFieldContainer(
                child: TextField(
                  autofocus: true,
                  controller: _weightController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    hintText: "Your Weight",
                    icon: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              TextFieldContainer(
                child: TextField(
                  autofocus: true,
                  controller: _genderController,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    hintText: "Your Gender",
                    icon: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              RoundedButton(
                text: "SAVE",
                press: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  if (_genderController.text == "Male" ||
                      _genderController.text == "male" ||
                      _genderController.text == "Female" ||
                      _genderController.text == "female") {
                    try {
                      await _authService.createPerson(
                          _fullNameController.text,
                          _ageController.text,
                          _heightController.text,
                          _weightController.text,
                          _genderController.text);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    } catch (e) {
                      Fluttertoast.showToast(msg: "$e");
                    }
                  } else {
                    Fluttertoast.showToast(msg: "Please enter male or female");
                  }
                  setState(() {
                    showSpinner = false;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
