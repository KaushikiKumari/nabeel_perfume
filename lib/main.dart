import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabeel_perfume/pages/onboarding/onboarding_page.dart';
import 'package:nabeel_perfume/pages/verfications/signin_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Ubuntu-Regular",
        primarySwatch: Colors.brown,
      ),
      home: Onbording(),
    );
  }
}
