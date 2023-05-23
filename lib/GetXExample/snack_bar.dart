import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarExample extends StatefulWidget {
  const SnackBarExample({Key? key}) : super(key: key);

  @override
  State<SnackBarExample> createState() => _SnackBarExampleState();
}

class _SnackBarExampleState extends State<SnackBarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Snack Bar Test',
        ),
      ),
      body: Center(
        child: Text(
          'Snack Bar',
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.snackbar(
              'Welcome',
              'This is Snack Bar',
            snackPosition: SnackPosition.BOTTOM,
            icon: Icon(Icons.add),
            backgroundColor: Colors.blue,
          );
        },
        child: Text('Click'),
      ),
    );
  }
}
