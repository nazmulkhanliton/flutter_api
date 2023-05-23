import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogMessage extends StatefulWidget {
  const DialogMessage({Key? key}) : super(key: key);

  @override
  State<DialogMessage> createState() => _DialogMessageState();
}

class _DialogMessageState extends State<DialogMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dialog Test',
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed:(){
            Get.dialog(
              AlertDialog(
                title: Text(
                  'Welcome',
                ),
                content: Text(
                  'This is body message',
                ),
                actions: [
                  TextButton(
                    onPressed: (){
                      Get.back();
                    },
                    child: Text(
                        'OK'
                    ),
                  ),
                ],
              ),
            );
          },
          child: Text(
            'Test Dialog',
          ),
        ),
      ),
    );
  }
}
