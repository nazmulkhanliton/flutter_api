import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_api/GetXExample/screen_three.dart';

class ScreenTwo extends StatefulWidget {
  final String name;
  const ScreenTwo({Key? key, this.name=''}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Screen Three GetX' + widget.name,
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                Get.to(ScreenThree());
              },
                  child: Text(
                    'Tap to Screen Three',
                  )
              ),
              TextButton(onPressed: (){
                Get.back();
              },
                  child: Text(
                    'Tap to Back Screen',
                  )
              ),
            ],
          ),
        )
    );
  }
}
