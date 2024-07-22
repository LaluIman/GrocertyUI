import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  final List _shopItems = [
    ["Apple","4.00","lib/images/apple.png",Colors.red],
    ["Mango","5.00","lib/images/Mango.png",Colors.yellow],
    ["Chitato","1.99","lib/images/snack.png", Colors.brown],
    ["Water","4.00","lib/images/water.png",Colors.blue],
  ];

  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  //addd
  void addItemToCart(int index){
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }
  //remove
  void removeFromCart(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate price
  String calculateTotal(){
    double totalPrice = 0;
    for (int i=0; i< _cartItems.length; i++){
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}