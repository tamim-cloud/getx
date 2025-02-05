import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/presentation/screens/home_screen.dart';
import 'package:getx/presentation/widgets/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
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
              onPressed: () {
                Get.to(HomeScreen(),
                 arguments: "message from second screen");
              },
              label: Text("back to Home screen"),
              icon: Icon(Icons.get_app_outlined),
            ),
            SizedBox(
              height: 23,
            ),
            Text(Get.arguments),
            SizedBox(height: 23),
            ElevatedButton(
                onPressed: () {
                  Get.to(ThirdScreen());
                },
                child: Text("Third Page"))
          ],
        ),
      )),
    );
  }
}
