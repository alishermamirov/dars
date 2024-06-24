import 'package:flutter/material.dart';

class ResposivePage extends StatelessWidget {
  const ResposivePage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size = mediaQueryData.size;
    var orientation = mediaQueryData.orientation;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(30),
            color: Colors.green,
            height: size.height * 0.4,
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(30),
            color: Colors.red,
            height: size.height * 0.3,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
