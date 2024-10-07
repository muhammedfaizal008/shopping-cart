// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ui_task/view/home_screen/home_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
         Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage("https://wallpapers.com/images/featured/travis-scott-cartoon-eowjkj2te9zlmm5w.jpg"))
          ),
         )
         ,
         bottomNavigationBar: BottomAppBar(
          height: 75,
          color: Colors.white,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black
            ),
            onPressed: (){
              Navigator.pushReplacement(
                context, MaterialPageRoute(
                  builder:(context) => HomeScreen(),
              ));
      
            }, child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Get started",style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(width: 10,),
              Icon(Icons.arrow_circle_right_outlined,color: Colors.white,)
            ],
          ) )
         ),
      );
  }
}