import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pageview"),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: pageController,
        children: [
          Center(
            child: Text(
              "1",
              style: TextStyle(fontSize: 40),
            ),
          ),
          Center(
            child: Text(
              "2",
              style: TextStyle(fontSize: 40),
            ),
          ),
          Center(
            child: Text(
              "3",
              style: TextStyle(fontSize: 40),
            ),
          ),
          Center(
            child: Text(
              "4",
              style: TextStyle(fontSize: 40),
            ),
          ),
          Center(
            child: Text(
              "5",
              style: TextStyle(fontSize: 40),
            ),
          ),
          Center(
            child: Text(
              "6",
              style: TextStyle(fontSize: 40),
            ),
          ),
          Center(
            child: Text(
              "7",
              style: TextStyle(fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }
}
