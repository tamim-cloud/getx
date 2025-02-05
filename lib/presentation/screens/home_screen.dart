import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/presentation/screens/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home Scree"),
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
                onPressed: () async {
                  data = await Get.to(SecondScreen(),
                      arguments: "this message from home screen",
                      curve: Curves.bounceInOut,
                      duration: Duration(seconds: 1),
                      transition: Transition.zoom);
                  setState(() {});
                },
                label: Text("go to second screen"),
                icon: Icon(Icons.get_app_outlined),
              ),
              SizedBox(
                height: 23,
              ),
              Text(data ?? "no data found"),
              SizedBox(
                height: 33,
                child: OutlinedButton(
                    onPressed: () {
                      Get.bottomSheet(backgroundColor: Colors.greenAccent,
                        Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.dark_mode),
                            title: Text("Dark Mode"), onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.light_mode),
                            title: Text("Light Mode"), onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                        ],
                      ));
                    },
                    child: Text("Change theme")),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar("Tamim", "Hello World",
            snackPosition: SnackPosition.BOTTOM);
      }),
    );
  }
}
