import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_api/GetXExample/screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GetX Route Test',
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              Get.to(ScreenTwo(name: ' Khan',));
            },
                child: Text(
                  'Tap to Screen Two',
                )
            ),
          ],
        ),
      )
    );
  }
}
