import 'package:flutter/material.dart';
import 'package:test_project/constants.dart';
import 'graph_kpi.dart';
import 'package:test_project/components/graph_perform.dart';

class TabContain extends StatelessWidget {
  const TabContain({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  final List<Tab> tabs;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        initialIndex: 0,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black38,
                  tabs: tabs,
                  //isScrollable: true,
                ),
              ),
              Container(
                height: 800,
                child: TabBarView(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 15.0,
                          left: 10,
                          right: 10,
                        ),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            KTextNSize(
                              text: "Monthly KPI Progress",
                              fontSize: 15,
                              fontColor: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                            GraphKPI(),
                            KTextNSize(
                              text: "Key Performance",
                              fontSize: 15,
                              fontColor: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GraphPerform(),
                                GraphPerform(),
                                GraphPerform(),
                                GraphPerform(),
                              ],
                            ),
                          ],
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
          ),
        )
    );
  }
}