import 'package:flutter/material.dart';
import 'screens/filters_screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/categories_screen.dart';
import 'screens/meal_detail_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          displayMedium:  TextStyle(color: Color.fromRGBO(20, 51, 51, 1),),
          displaySmall:  TextStyle(color: Color.fromRGBO(20, 51, 51, 1),),
          titleSmall:  TextStyle(
            fontSize: 24,
            fontFamily: 'RobotoCondensed',
          )
        )
      ),
      // home:  CategoriesScreen(),
      routes: {
        '/': (ctx) =>TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },
      onUnknownRoute: (settings) { //this is just like showing 404 error screen in web Apps
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),);
    },
    );
  }
}

