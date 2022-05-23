import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Blog/blog_screen.dart';
import 'package:flutter_app/Screens/Diary/diary_screen.dart';
import 'package:flutter_app/Screens/Recipe/main.dart';
import 'package:flutter_app/constants.dart';


/*class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
           
            const Text(
              "Welcome To Our App",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            RoundedButton(
                text: "Sign Out",
                press: () {
                  _authService.signOut();
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
*/
class Body extends StatefulWidget {
  // final AuthService _authService = AuthService();

  const Body({Key? key}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int index = 0;
  final screens = [
    //const LoginScreen(),
    //const SignUpScreen(),

    //Body(),
//const WelcomeScreen(),
    const Center(child: Text('Profile', style: TextStyle(fontSize: 72))),
    
    RecipeApp(),
    //const Center(child: Text('Recipes', style: TextStyle(fontSize: 72))),
    const Center(child: Text('Plans', style: TextStyle(fontSize: 72))),
    //const Center(child: Text('Blog', style: TextStyle(fontSize: 72))),
    const BlogScreen(),
    DiaryScreen(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        body: screens[index],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: kPrimaryColor,
            labelTextStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          child: NavigationBar(
            height: 60,
            backgroundColor: kPrimaryColor,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
            selectedIndex: index,
            animationDuration: const Duration(seconds: 3),
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.person, color: Colors.white),
                label: 'Profile',
                selectedIcon: Icon(
                  Icons.person,
                  color: Colors.amber,
                ),
              ),
              NavigationDestination(
                icon: Icon(Icons.restaurant_menu, color: Colors.white),
                label: 'Recipes',
                selectedIcon: Icon(
                  Icons.restaurant_menu,
                  color: Colors.amber,
                ),
              ),
              NavigationDestination(
                icon: Icon(Icons.check_circle, color: Colors.white),
                label: 'Plans',
                selectedIcon: Icon(
                  Icons.check_circle,
                  color: Colors.amber,
                ),
              ),
              NavigationDestination(
                icon: Icon(Icons.menu_book, color: Colors.white),
                label: 'Blog',
                selectedIcon: Icon(
                  Icons.menu_book,
                  color: Colors.amber,
                ),
              ),
              NavigationDestination(
                icon: Icon(Icons.menu, color: Colors.white),
                label: 'Diary',
                selectedIcon: Icon(
                  Icons.menu,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      );
}
