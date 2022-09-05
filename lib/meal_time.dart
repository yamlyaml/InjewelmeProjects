import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renew/provider/provider.dart';

class MealTime extends StatelessWidget {
  final String mealtime;
  final int calroie;

  const MealTime({Key? key, required this.mealtime, required this.calroie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(mealtime,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(
            height: 8,
            color: Colors.transparent,
          ),
          Row(
            children: [
              Text(
                calroie.toString(),
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              Text(' kcal')
            ],
          )
        ],
      ),
    );
  }
}
