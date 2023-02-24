// Each category meal screen opens
import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal_item.dart';
import '../models/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;
  //
  // const CategoryMealsScreen(
  //     this.categoryId,
  //     this.categoryTitle,
  //     {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String,String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((element){ //This method filter out meals that sits on a category through it's id.
      return element.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle.toString()),),
      body:  ListView.builder(itemBuilder: (ctx,index){
        return MealItem(
          id: categoryMeals[index].id,
          title: categoryMeals[index].title,
          duration: categoryMeals[index].duration,
          affordability: categoryMeals[index].affordability as Affordability,
          complexity: categoryMeals[index].complexity as Complexity,
          imageUrl: categoryMeals[index].imageUrl,
        );
      },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
