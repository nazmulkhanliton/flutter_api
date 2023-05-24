import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'getAPI/example_2.dart';
import 'getAPI/login.dart';
import 'welcome_page.dart';
import 'package:get/get.dart';
import 'GetXExample/snack_bar.dart';
import 'GetXExample/dialog_message.dart';
import 'GetXExample/screen_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: const ScreenOne(),
      //Hello
    );
  }
}
