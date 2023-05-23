import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Screen Three GetX',
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
              },
                  child: Text(
                    'Screen Three',
                  )
              ),
              TextButton(onPressed: (){
                Get.back();
              },
                  child: Text(
                    'Tap to Back Screen',
                  )
              )
            ],
          ),
        )
    );
  }
}
