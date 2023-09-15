import 'package:flutter/cupertino.dart';

import 'food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
      name: "Salmon Sushi",
      price: "21",
      imagePath: "lib/images/sushi.png",
      rating: "4.9",
    ),
    Food(
      name: "Tuna",
      price: "23",
      imagePath: "lib/images/tuna.png",
      rating: "4.8",
    ),
    Food(
      name: "Uramaki",
      price: "50",
      imagePath: "lib/images/uramaki.png",
      rating: "4.3",
    ),
    Food(
      name: "Duo Sushi",
      price: "45",
      imagePath: "lib/images/duo_sushi.png",
      rating: "4.5",
    ),
    Food(
      name: "Sharing Sushi",
      price: "78",
      imagePath: "lib/images/group_sushi.png",
      rating: "4.9",
    ),
    Food(
      name: "Plain Sushi",
      price: "30",
      imagePath: "lib/images/plain_sushi.png",
      rating: "4.9",
    ),
    Food(
      name: "Gunkan Sushi",
      price: "32",
      imagePath: "lib/images/gunkan.png",
      rating: "4.7",
    ),
  ];

  List<Food> _cart = [];

  // getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to cart
  void addToCart(Food foodItem, int quantity){
    for (int i = 0; i < quantity; i++){
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}