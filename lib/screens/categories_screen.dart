// FRONT SCREEN

import 'package:flutter/material.dart';
import '../widgets/categories_item.dart';
import '../models/dummy_data.dart';


class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children:
          DUMMY_CATEGORIES.map((e) => CategoryItem(e.id,e.title,e.color)).toList()
          // DUMMY_CATEGORIES.map(
          //         (e) => CategoryItem(
          //             e.id,e.title, e.color
          //         ),
          // ).toList(),
      );
  }
}
