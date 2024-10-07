// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_task/view/first_screen/first_screen.dart';

void main(){
  runApp(MyWidget());
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}