import 'package:flutter/material.dart';
import 'package:test_project/screens/login_screen.dart';
import 'package:test_project/screens/dashboard_screen.dart';
import 'package:test_project/screens/issue_screen.dart';
import 'package:test_project/screens/menu_screen.dart';
import 'package:test_project/screens/kpi_monthly_screen.dart';

import 'sliversithsabsar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SliverWithTabBar.id,
      routes: {
          LoginScreen.id: (context) => LoginScreen(),
          DashboardScreen.id: (context) => DashboardScreen(),
          IssueScreen.id: (context) => IssueScreen(),
          MenuScreen.id: (context) => MenuScreen(),
          KpiMonthlyScreen.id: (context) => KpiMonthlyScreen(),

          SliverWithTabBar.id: (context) => SliverWithTabBar(),
      },
    );
  }
}