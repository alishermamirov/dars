import 'package:dars/constants.dart';
import 'package:dars/details_page.dart';
import 'package:dars/homepage.dart';
import 'package:dars/layooutbuilderpage.dart';
import 'package:dars/resposive_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      // theme: ThemeData(primaryColor: Colors.grey, fontFamily: "Lato"),
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.home: (context) => const HomePage(),
        Routes.details: (context) => const DetailsPage()
      },
      // initialRoute: Routes.home,
      home: const Layooutbuilderpage(),
    );
  }
}
