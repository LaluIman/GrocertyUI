// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutte_grocery/components/grocery_item_tile.dart';
import 'package:flutte_grocery/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: 
      FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context){
          return CartPage();
        },)),
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.shopping_bag, color: Colors.white,),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ SizedBox(height: 48,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Good Morning", style: TextStyle(fontWeight: FontWeight.bold),),
            ),

            SizedBox(height: 24,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: 
              Text("Let's order fresh items for you", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(),
            ),

            SizedBox(height: 24,),
            
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Fresh Items"),
            ),

            Expanded(child:
              Consumer<CartModel>(builder: (context, value, child){
                return 
                GridView.builder(
                  itemCount: value.shopItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1/1.2,) ,itemBuilder: (content, index){
                return GroceryItemTile(
                  itemName: value.shopItems[index][0],
                  itemPrice: value.shopItems[index][1],
                  imagePath: value.shopItems[index][2],
                  color: value.shopItems[index][3],
                  onPressed: () {
                    Provider.of<CartModel>(context, listen: false)
                    .addItemToCart(index);
                  },
                );
                },
              );
              })
            )
          ],
        ),
      ),
    );
  }
}

class GrocetyItemTile {
}

