import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screens/category_meal_page.dart';
class CategoryItem extends StatelessWidget {

  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id,this.title,this.color);


  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(CategoryMealsPage.routeName,arguments: {'id':id,'title':title});
        },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Center(child: Text(title,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
            color: Colors.white
        ),)),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            color.withOpacity(0.7),
            color,
          ],
            begin:Alignment.topLeft ,
            end: Alignment.bottomRight,

          ),
          borderRadius: BorderRadius.circular(18),
        ),

      ),
    );
  }
}
