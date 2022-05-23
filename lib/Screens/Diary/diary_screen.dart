import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Diary/constants.dart';
import 'package:flutter_app/Screens/Diary/screens/body.dart';
import 'package:flutter_app/Screens/Diary/screens/details_screen.dart';

import 'package:flutter_app/Screens/Diary/widgets/category_card.dart';
import 'package:flutter_app/Screens/Diary/widgets/search_bar.dart';
import 'package:flutter_svg/svg.dart';


class DiaryScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

