import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/presentation/screens/second_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: ListTile(
                title: Text("Default Dialog using getx"),
                subtitle: Text("getx"),
                onTap: () {
                  Get.defaultDialog(
                    title: "Do You Want To Delete It",
                    middleText: "Hello World",
                    confirm: TextButton(
                        onPressed: () {
                          Get.to(SecondScreen(),
                              arguments: "Message From Third screen");
                        },
                        child: Text("Ok")),
                    confirmTextColor: Colors.green,
                    cancel: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text("Cancel")),
                    cancelTextColor: Colors.red,
                    buttonColor: Colors.blue,
                    // backgroundColor: Colors.pink
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
