// ignore_for_file: prefer_const_constructors

import 'package:flutte_grocery/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 160, bottom: 30, left: 50, right: 50),
            child: Image.asset('lib/images/Mango.png'),
          ),

         Padding(
          padding: const EdgeInsets.all(24.0),
          child: 
          Text("We Deliver Groceries at your Door step",textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
          ),
        ),


        Text("Fresh Item Everyday", style: TextStyle(color: Colors.grey),),

        const SizedBox(height: 30,),

        GestureDetector(
          onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
            return HomePage();
          })),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 100, right: 100),
            child: Text("Get Started", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
          ),
        ),
      ],
      ),
    );
  }
}