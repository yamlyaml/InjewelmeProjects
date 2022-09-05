import 'package:flutter/material.dart';

class MealModel with ChangeNotifier {
  final List<Map<String,dynamic>> mealData;

  MealModel({required this.mealData});
}

class NutrientPieModel with ChangeNotifier {
  final List<Map<String,dynamic>> nutrientPieData;

  NutrientPieModel({required this.nutrientPieData});
}
