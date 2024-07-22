// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_interpolation_to_compose_strings, must_be_immutable

import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {

  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  void Function()? onPressed;

   GroceryItemTile({super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Image.asset(
            imagePath,
            height: 80,
          ),
          
          Text(itemName, style: TextStyle(fontWeight: FontWeight.w500),),

          MaterialButton(onPressed: onPressed,
          color: color[600],
            child: Text('\$' + itemPrice, style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          )
        ],),
      ),
    );
  }
}