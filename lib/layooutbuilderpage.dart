import 'package:flutter/material.dart';

class Layooutbuilderpage extends StatelessWidget {
  const Layooutbuilderpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("layout"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return widerLayaout();
          } else {
            return normalLayout();
          }
        },
      ),
    );
  }

  Widget widerLayaout() {
    return Container();
  }

  Widget normalLayout() {
    return Container();
  }
}
