import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/favorites_screen.dart';
import 'package:food_app/screens/categories_screen.dart';

class TabsScreen extends StatefulWidget {
  static const routeName='/tab-screen';
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String,Object>> _pages=[
    {
      'page': CategoriesScreen(),
      'title': 'Categories',
    },
    {
      'page': FavoritesScreen(),
      'title': 'Favorite',
    },

  ];




  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
            appBar: AppBar(
              title: Text('Meals'),
            ),

            bottomNavigationBar: Container(
              color: Colors.pink,
              height: 70,
              child: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white70,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: EdgeInsets.all(5.0),

                tabs: [
                  Tab(
                    icon: Icon(Icons.category),
                    text: 'Categories',
                  ),
                  Tab(
                    icon: Icon(Icons.star),
                    text: 'Favorites',
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                CategoriesScreen(),
                FavoritesScreen(),
              ],
            ),
      ),
    );
  }
}
