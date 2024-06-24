import 'package:flutter/material.dart';

class TabbarPage extends StatefulWidget {
  const TabbarPage({super.key});

  @override
  State<TabbarPage> createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> {
  // TabController tabController=TabController(length: 3, vsync: )

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabbar"),
          bottom: TabBar(tabs: [
            Tab(
              text: "bir",
            ),
            Tab(
              text: "ikki",
            ),
            Tab(
              text: "uch",
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            child: Text("Bir"),
          ),
          Container(
            child: Text("ikki"),
          ),
          Container(
            child: Text("uch"),
          ),
        ]),
      ),
    );
  }
}
