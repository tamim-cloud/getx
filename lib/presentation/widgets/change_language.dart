import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Language"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('name'.tr),
              subtitle: Text('versity'.tr),
            ),
            Row(
              children: [
                OutlinedButton(
                    onPressed: () {
                      Get.updateLocale(Locale('en', 'US'));
                    },
                    child: Text("English")),
                SizedBox(
                  width: 23,
                ),
                OutlinedButton(
                    onPressed: () {
                      Get.updateLocale(Locale('bn', 'BD'));
                    },
                    child: Text("Bangla")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
