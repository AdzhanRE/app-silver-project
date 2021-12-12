import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/components/top_container.dart';
import 'package:test_project/components/main_content.dart';
import 'package:test_project/components/main_title.dart';

class DashboardScreen extends StatefulWidget {
  static const String id = 'dashboard_screen';

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<Tab> tabs = <Tab>[
    Tab(
        icon: Icon(Icons.insert_chart),
        text: 'KPI Progress Graph',
    ),
    Tab(
        icon: Icon(Icons.library_books),
        text: 'Notification'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: MainTitle(
          icon: Icon(Icons.track_changes),
          text: "Dashboard",
        ),
        body: SafeArea(
          child: Column(
            children: [
              TopContainer(
                  color: Colors.transparent,
                  height: 200,
                  width: width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "YOUR KPI VALUE TODAY"
                              ),
                              Text(
                                "Updated on Monday, 04 October 2021, 17:43 PM"
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      border: Border.all(
                                        color: Colors.black12,
                                        width: 5
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "91",
                                          style: TextStyle(
                                            fontSize: 100
                                          ),
                                        ),
                                        Column(
                                          children: const [
                                            Text(
                                              "%",
                                              style: TextStyle(
                                                  fontSize: 50
                                              ),
                                            ),
                                            SizedBox(
                                              height: 50,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.arrow_upward),
                                            Text(
                                              "+ 1.5",
                                              style: TextStyle(
                                                  fontSize: 25
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.apps),
                                            Text(
                                              "VIEW PROGRESS",
                                              style: TextStyle(
                                                fontSize: 13
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                      )
                    ],
                  )
              ),
              MainContent(
                child: Column(
                  children: [
                    DefaultTabController(
                        length: tabs.length,
                        initialIndex: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              child: TabBar(
                                labelColor: Colors.black,
                                unselectedLabelColor: Colors.black38,
                                tabs: tabs,
                              ),
                            ),
                            Container(
                              height: 100,
                              child: TabBarView(
                                children: [
                                  Container(
                                    child: Center(
                                      child: Text(
                                          'KPI',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                          ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                      child: Text(
                                        'Notification',
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





