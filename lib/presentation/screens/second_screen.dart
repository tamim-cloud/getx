import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Learn flutter using getx"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Click here and go next page"),
            SizedBox(height: 23),
            TextButton.icon(
              onPressed: () {Get.back( result: "this message from second screen");},
              label: Text("click here"),
              icon: Icon(Icons.get_app_outlined),
            ),
            SizedBox(height: 23,),
            Text(Get.arguments),
          ],
        ),
      )),
    );
  }
}