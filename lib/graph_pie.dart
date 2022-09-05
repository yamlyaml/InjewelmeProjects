import 'package:flutter/material.dart';
import 'package:d_chart/d_chart.dart';
import 'package:provider/provider.dart';
import 'package:renew/provider/provider.dart';

class PieGraph extends StatelessWidget {
  const PieGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: DChartPie(
        animate: true,
        animationDuration: Duration(seconds: 1),
        data: Provider.of<NutrientPieModel>(context).nutrientPieData,
        fillColor: (pieData, index) {
          switch (pieData['domain']) {
            case '탄수화물':
              return Colors.blue[200];
            case '단백질':
              return Colors.blue[400];
            case '지방':
              return Colors.blue[600];
            default:
              return Colors.blue;
          }
        },
        pieLabel: (pieData, index) {
          return "${pieData['domain']}\n${pieData['measure']}";
        },
        labelPosition: PieLabelPosition.auto,
        labelColor: Colors.white,
        labelFontSize: 16,
        showLabelLine: false,
      ),
    );
  }
}
