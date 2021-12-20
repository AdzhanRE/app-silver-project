import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphKPI extends StatefulWidget {
  const GraphKPI({Key? key}) : super(key: key);

  @override
  _GraphKPIState createState() => _GraphKPIState();
}

class _GraphKPIState extends State<GraphKPI> {
  late List<ExpenseData> _charData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _charData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 200,
        width: 300,
          child: FittedBox(
            child: SfCartesianChart(
              tooltipBehavior: _tooltipBehavior,
              primaryYAxis: NumericAxis(
                maximum: 40,
                minimum: 10,
                interval: 10
              ),
              series: <ChartSeries>[
                LineSeries<ExpenseData, num>(
                  dataSource: _charData,
                  xValueMapper: (ExpenseData exp, _)=> exp.expenseCat,
                  yValueMapper: (ExpenseData exp, _)=> exp.father,
                  markerSettings: MarkerSettings(isVisible: true),
                ),
                LineSeries<ExpenseData, num>(
                  dataSource: _charData,
                  xValueMapper: (ExpenseData exp, _)=> exp.expenseCat,
                  yValueMapper: (ExpenseData exp, _)=> exp.mother,
                  //name: 'Mother',
                  markerSettings: MarkerSettings(isVisible: true),
                ),
              ],
            ),
          ),
        ),
    );
  }

  List<ExpenseData> getChartData(){
    final List<ExpenseData> chartData = <ExpenseData>[
      ExpenseData(1, 28, 13),
      ExpenseData(2, 30, 20),
      ExpenseData(3, 22, 18),
      ExpenseData(4, 22, 30),
      ExpenseData(5, 29, 22),
      ExpenseData(6, 26, 21),
      ExpenseData(7, 30, 13),
    ];

    return chartData;
  }
}


class ExpenseData {
  ExpenseData(this.expenseCat, this.father, this.mother);

  final num? expenseCat;
  final num? father;
  final num? mother;
}