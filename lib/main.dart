import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renew/data.dart';
import 'package:renew/provider/provider.dart';

import 'graph_bar.dart';
import 'graph_pie.dart';
import 'meal_list.dart';

void main() {
  runApp(InjewelApp());
}
// 수정합니다.

class InjewelApp extends StatefulWidget {
  const InjewelApp({Key? key}) : super(key: key);

  @override
  State<InjewelApp> createState() => _InjewelAppState();
}

class _InjewelAppState extends State<InjewelApp> {
  int userDefineIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MealModel(mealData: MealData),
        ),
        ChangeNotifierProvider(
          create: (context) =>
              NutrientPieModel(nutrientPieData: NutrientPieData),
        )
      ],
      child: MaterialApp(
        title: 'Injewelme',
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              '식단표',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                setState(() {
                  if (userDefineIndex == 0) {
                    userDefineIndex = 1;
                  } else {
                    userDefineIndex = 0;
                  }
                });
              },
              icon: Icon(Icons.refresh),
            ),
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MealList(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '다량 영양소',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      height: 10,
                      color: Colors.transparent,
                    ),
                    BarGraph(
                        barGraphWidth:
                            MediaQueryData.fromWindow(window).size.width,
                        barColor: Colors.blue[100],
                        ingredient: '탄수화물',
                        ingredientValue: NutrientBarData[userDefineIndex]
                            ['탄수화물']),
                    BarGraph(
                        barGraphWidth:
                            MediaQueryData.fromWindow(window).size.width,
                        barColor: Colors.blue[200],
                        ingredient: '단백질',
                        ingredientValue: NutrientBarData[userDefineIndex]
                            ['단백질']),
                    BarGraph(
                        barGraphWidth:
                            MediaQueryData.fromWindow(window).size.width,
                        barColor: Colors.blue[300],
                        ingredient: '지방',
                        ingredientValue: NutrientBarData[userDefineIndex]
                            ['지방']),
                    BarGraph(
                        barGraphWidth:
                            MediaQueryData.fromWindow(window).size.width,
                        barColor: Colors.blue[400],
                        ingredient: '식이섬유',
                        ingredientValue: NutrientBarData[userDefineIndex]
                            ['식이섬유']),
                    BarGraph(
                        barGraphWidth:
                            MediaQueryData.fromWindow(window).size.width,
                        barColor: Colors.blue[500],
                        ingredient: '콜레스테롤',
                        ingredientValue: NutrientBarData[userDefineIndex]
                            ['콜레스테롤']),
                    BarGraph(
                        barGraphWidth:
                            MediaQueryData.fromWindow(window).size.width,
                        barColor: Colors.blue[600],
                        ingredient: '포화지방산',
                        ingredientValue: NutrientBarData[userDefineIndex]
                            ['포화지방산']),
                  ],
                ),
              ),
              PieGraph(),
            ],
          ),
        ),
      ),
    );
  }
}
