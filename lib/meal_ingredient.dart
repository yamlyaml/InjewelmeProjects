import 'package:flutter/material.dart';

class MealIngredient extends StatelessWidget {
  final String name;
  final String type;
  final String ingredients;
  final int weight;
  final int calorie;

  const MealIngredient(
      {Key? key,
      required this.name,
      required this.type,
      required this.ingredients,
      required this.weight,
      required this.calorie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 18),
              ),
              Icon(
                Icons.favorite_border,
                color: Colors.pink,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          Divider(
            height: 8,
            color: Colors.transparent,
          ),
          Row(
            children: [
              Text(
                '종류',
                style: TextStyle(color: Colors.grey[500]),
              ),
              Text(
                type,
                style: TextStyle(color: Colors.grey[500]),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          Row(
            children: [
              Text(
                '재료',
                style: TextStyle(color: Colors.grey[500]),
              ),
              Text(
                ingredients,
                style: TextStyle(color: Colors.grey[500]),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          Row(
            children: [
              Text(
                '중량',
                style: TextStyle(color: Colors.grey[500]),
              ),
              Text(
                '$weight g',
                style: TextStyle(color: Colors.grey[500]),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          Row(
            children: [
              Text(
                '열량',
                style: TextStyle(color: Colors.grey[500]),
              ),
              Text(
                '$calorie kcal',
                style: TextStyle(color: Colors.grey[500]),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ],
      ),
    );
  }
}
