import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/dummy_data.dart';
import 'package:food_app/widgets/meal_item.dart';

class CategoryMealsPage extends StatelessWidget {
  static const routeName='/category-meals';
  // final String categoryId;
  // final String categoryTitle;
  // const CategoryMealsPage(this.categoryId,this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs=ModalRoute.of(context)?.settings.arguments as Map<String,String>;
    final categoryTitle=routeArgs['title'];
    final categoryId=routeArgs['id'];
    final categoryMeals=DUMMY_MEALS.where((meal){
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context,index){
        return MealItem(title: categoryMeals[index].title, imageUrl: categoryMeals[index].imageUrl, duration: categoryMeals[index].duration, complexity: categoryMeals[index].complexity, affordability: categoryMeals[index].affordability);

      },
      itemCount:categoryMeals.length ,
      ),
    );
  }
}