import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/dummy_data.dart';
class MealDetail extends StatelessWidget {

  static const routeName='/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealId=ModalRoute.of(context)?.settings.arguments as String;
    final selectedMeal=DUMMY_MEALS.firstWhere((meal) => meal.id==mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
      ),
      body: Column(
      children: [
        Container(

          height: 300,
          width: double.infinity,
          child: Image.network(selectedMeal.imageUrl,
          fit: BoxFit.cover,),
        ),
        Container(

          margin: EdgeInsets.symmetric(vertical: 10.0),
          child: Text('Ingredients',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        ),
         Container(
            padding: EdgeInsets.all(15),
           height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.height * 0.40,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Scrollbar(
              child: ListView.builder(itemBuilder: (context,index)=>
                Card(
                  color: Colors.white,
                  child: Text(selectedMeal.ingredients[index]),
                ),
              itemCount: selectedMeal.ingredients.length,

              ),
            ),
          ),
      ],
      ),
    );
  }
}
