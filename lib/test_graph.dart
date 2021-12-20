import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

//line graph
class TestGraph extends StatefulWidget {
  const TestGraph({Key? key}) : super(key: key);

  static const String id = 'test_graph';

  @override
  _TestGraphState createState() => _TestGraphState();
}

class _TestGraphState extends State<TestGraph> {
  late List<ExpenseData> _charData;

  //utk check data bile tekan pada point graph
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _charData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SfCartesianChart(
            tooltipBehavior: _tooltipBehavior,
            title: ChartTitle(
              text: 'Monthly expenses of a family',
            ),
            legend: Legend(isVisible: true),//utk tunjuk penunjuk
            series: <ChartSeries>[
              StackedLineSeries<ExpenseData, String>(
                  dataSource: _charData,
                  xValueMapper: (ExpenseData exp, _)=> exp.expenseCat,
                  yValueMapper: (ExpenseData exp, _)=> exp.father,
                  name: 'Father',  //ni gune utk legend
                  markerSettings: MarkerSettings(isVisible: true),//penanda pada graph
              ),
              StackedLineSeries<ExpenseData, String>(
                dataSource: _charData,
                xValueMapper: (ExpenseData exp, _)=> exp.expenseCat,
                yValueMapper: (ExpenseData exp, _)=> exp.mother,
                name: 'Mother',
                markerSettings: MarkerSettings(isVisible: true),
              ),
              StackedLineSeries<ExpenseData, String>(
                dataSource: _charData,
                xValueMapper: (ExpenseData exp, _)=> exp.expenseCat,
                yValueMapper: (ExpenseData exp, _)=> exp.son,
                name: 'Son',
                markerSettings: MarkerSettings(isVisible: true),
              ),
              StackedLineSeries<ExpenseData, String>(
                dataSource: _charData,
                xValueMapper: (ExpenseData exp, _)=> exp.expenseCat,
                yValueMapper: (ExpenseData exp, _)=> exp.daughter,
                name: 'Daughter',
                markerSettings: MarkerSettings(isVisible: true),
              ),
            ],
            primaryXAxis: CategoryAxis(),
          ),
        ),
    );
  }

  List<ExpenseData> getChartData(){
    final List<ExpenseData> chartData = <ExpenseData>[
      ExpenseData('Food', 55, 40, 45, 48),
      ExpenseData('Transport', 33, 45, 54, 28),
      ExpenseData('Medical', 43, 23, 20, 34),
      ExpenseData('Clothes', 32, 54, 23, 54),
      ExpenseData('Books', 56, 18, 43, 55),
      ExpenseData('Others', 23, 54, 33, 56),
    ];

    return chartData;
  }
}

class ExpenseData {
  ExpenseData(this.expenseCat, this.father, this.mother, this.son, this.daughter);

  final String? expenseCat;
  final num? father;
  final num? mother;
  final num? son;
  final num? daughter;
}



//radial bar graph
class TestRadial extends StatefulWidget {
  const TestRadial({Key? key}) : super(key: key);

  static const String id = 'test_radial';

  @override
  _TestRadialState createState() => _TestRadialState();
}

class _TestRadialState extends State<TestRadial> {

  late List<GDPData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SfCircularChart(
              title:
              ChartTitle(text: 'Continent wise GDP - 2021 \n (in billions of USD)'),
              legend:
              Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
              tooltipBehavior: _tooltipBehavior,
              series: <CircularSeries>[
                RadialBarSeries<GDPData, String>(
                    dataSource: _chartData,
                    xValueMapper: (GDPData data, _) => data.continent,
                    yValueMapper: (GDPData data, _) => data.gdp,
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                    enableTooltip: true,
                    maximumValue: 40000)
              ],
            ),
        ),
    );
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('Oceania', 1600),
      GDPData('Africa', 2490),
      GDPData('S America', 2900),
      GDPData('Europe', 23050),
      GDPData('N America', 24880),
      GDPData('Asia', 34390),
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}

