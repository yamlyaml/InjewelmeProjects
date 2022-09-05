import 'package:flutter/material.dart';

import 'meal_ingredient.dart';
import 'meal_time.dart';

class MealInfo extends StatelessWidget {
  final Map<String, dynamic> mealData;

  const MealInfo({Key? key, required this.mealData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: MealTime(
                mealtime: mealData['time'],
                calroie: mealData['calorie'],
              )),
          VerticalDivider(
            width: 0,
            thickness: 1.0,
          ),
          Expanded(
              flex: 2,
              child: MealIngredient(
                name: mealData['name'],
                type: mealData['type'],
                ingredients: mealData['ingredients'],
                weight: mealData['weight'],
                calorie: mealData['calorie'],
              ))
        ],
      ),
    );
  }
}
