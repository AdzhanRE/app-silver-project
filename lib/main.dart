import 'package:flutter/material.dart';
import 'package:test_project/screens/login_screen.dart';
import 'package:test_project/screens/dashboard_screen.dart';
import 'package:test_project/screens/issue_screen.dart';
import 'package:test_project/screens/menu_screen.dart';
import 'package:test_project/screens/kpi_monthly_screen.dart';

import 'sliversithsabsar.dart';
import 'test_silver.dart';
import 'test_graph.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: DashboardScreen.id,
      routes: {
          LoginScreen.id: (context) => LoginScreen(),
          DashboardScreen.id: (context) => DashboardScreen(),
          IssueScreen.id: (context) => IssueScreen(),
          MenuScreen.id: (context) => MenuScreen(),
          KpiMonthlyScreen.id: (context) => KpiMonthlyScreen(),

          SliverWithTabBar.id: (context) => SliverWithTabBar(),
          TestSilver.id: (context) => TestSilver(),
          TestGraph.id: (context) => TestGraph(),
          TestRadial.id: (context) => TestRadial()
      },
    );
  }
}