import 'package:flutter/material.dart';
import '../models/dish.dart';

class CartItem {
  final Dish dish;
  int quantity;
  String? note;

  CartItem({
    required this.dish,
    this.quantity = 1,
    this.note,
  });
}

class CartProvider with ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  int get totalItems => _items.fold(0, (sum, item) => sum + item.quantity);

  double get subTotal => _items.fold(0, (sum, item) => sum + (item.dish.price * item.quantity));

  void addToCart(Dish dish) {
    final index = _items.indexWhere((item) => item.dish.id == dish.id);
    if (index >= 0) {
      _items[index].quantity++;
    } else {
      _items.add(CartItem(dish: dish));
    }
    notifyListeners();
  }

  void removeFromCart(String dishId) {
    _items.removeWhere((item) => item.dish.id == dishId);
    notifyListeners();
  }

  void updateQuantity(String dishId, int quantity) {
    final index = _items.indexWhere((item) => item.dish.id == dishId);
    if (index >= 0) {
      if (quantity > 0) {
        _items[index].quantity = quantity;
      } else {
        _items.removeAt(index);
      }
      notifyListeners();
    }
  }

  void updateNote(String dishId, String note) {
    final index = _items.indexWhere((item) => item.dish.id == dishId);
    if (index >= 0) {
      _items[index].note = note;
      notifyListeners();
    }
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
