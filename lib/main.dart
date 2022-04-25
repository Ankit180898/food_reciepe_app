import 'package:flutter/material.dart';
import 'package:food_app/screens/categories_screen.dart';
import 'package:food_app/screens/category_meal_page.dart';
import 'package:food_app/screens/meal_detail_page.dart';
import 'package:food_app/screens/splash_screen.dart';
import 'package:food_app/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                bodyText2: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
              ),
          primarySwatch: Colors.pink),
      // home: CategoriesScreen(),
      routes: {
        '/': (context) => SplashScreen(),
        TabsScreen.routeName:(context)=>TabsScreen(),
        CategoriesScreen.routeName:(context)=>CategoriesScreen(),
        CategoryMealsPage.routeName: (context) => CategoryMealsPage(),
        MealDetail.routeName:(context)=>MealDetail(),
        SplashScreen.routeName:(context)=>SplashScreen(),

      },
    );
  }
}
