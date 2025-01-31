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
              onPressed: () async {
               data= await Get.to(SecondScreen(), arguments: "this message from home screen",
                curve: Curves.bounceInOut,
                    duration: Duration(seconds: 1),
                    transition: Transition.zoom);
                    setState(() {
                      
                    });
              },
              label: Text("click here"),
              icon: Icon(Icons.get_app_outlined),
            ),
            SizedBox(height: 23,),
            Text(data?? "no data found")
          ],
        ),
      )),
    );
  }
}
