import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renew/data.dart';
import 'package:renew/provider/provider.dart';

import 'meal_info.dart';

class MealList extends StatelessWidget {
  const MealList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Divider(
          height: 1,
          thickness: 1.0,
        ),
        MealInfo(mealData: Provider.of<MealModel>(context).mealData[0]),
        Divider(
          height: 1,
          thickness: 1.0,
        ),
        MealInfo(mealData: Provider.of<MealModel>(context).mealData[1]),
        Divider(
          height: 1,
          thickness: 1.0,
        ),
        MealInfo(mealData: Provider.of<MealModel>(context).mealData[2]),
        Divider(
          height: 1,
          thickness: 1.0,
        ),
      ],
    );
  }
}
