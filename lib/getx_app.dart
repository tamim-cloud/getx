import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx/presentation/screens/home_screen.dart';

class GetxApp extends StatelessWidget {
  const GetxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( debugShowCheckedModeBanner: false, 
      home: HomeScreen()
    );
  }
}