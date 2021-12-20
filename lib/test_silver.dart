import 'package:flutter/material.dart';
import 'package:test_project/components/top_container.dart';
import 'package:test_project/components/main_content.dart';
import 'package:test_project/components/main_title.dart';
import 'components/tab_contain.dart';
import 'constants.dart';

class TestSilver extends StatefulWidget {
  static const String id = 'test_silver';

  @override
  _TestSilverState createState() => _TestSilverState();
}

class _TestSilverState extends State<TestSilver> with SingleTickerProviderStateMixin{
  late TabController controller;

  final List<Tab> tabs = <Tab>[
    const Tab(
      icon: Icon(Icons.insert_chart),
      text: 'KPI Progress Graph',
    ),
    const Tab(
        icon: Icon(Icons.library_books),
        text: 'Notification'
    ),
  ];

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: false,
                snap: false,
                floating: true,
                backgroundColor: Colors.transparent,
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TopContainer(
                          //color: Colors.transparent,
                          //height: 200,
                          width: width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 10.0,
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
                                                KTextNSize(
                                                  text: "91",
                                                  fontSize: 100,
                                                ),
                                                Column(
                                                  children: [
                                                    KTextNSize(
                                                      text: "%",
                                                      fontSize: 50,
                                                    ),
                                                    SizedBox(
                                                      height: 50,
                                                    )
                                                  ],
                                                ),
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
                                                    KTextNSize(
                                                      text: "1.5",
                                                      fontSize: 25,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 50,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(Icons.apps),
                                                    KTextNSize(
                                                      text: "VIEW PROGRESS",
                                                      fontSize: 12,
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
                    ],
                  ),
                ),
              )
            ];
          },
          body: MainContent(
            child: TabContain(tabs: tabs),
          ),
        ),
      ),
    );
  }

}


