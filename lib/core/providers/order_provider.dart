import 'package:flutter/material.dart';
import '../models/order.dart';

class OrderProvider with ChangeNotifier {
  final List<OrderModel> _orders = [];

  List<OrderModel> get orders => _orders;

  List<OrderModel> get activeOrders => 
      _orders.where((o) => o.status != OrderStatus.paid && o.status != OrderStatus.cancelled).toList();

  void addOrder(OrderModel order) {
    _orders.insert(0, order);
    notifyListeners();
  }

  void updateOrderStatus(String orderId, OrderStatus newStatus) {
    final index = _orders.indexWhere((o) => o.id == orderId);
    if (index >= 0) {
      _orders[index].status = newStatus;
      notifyListeners();
    }
  }

  double get todayRevenue {
    return _orders
        .where((o) => o.status == OrderStatus.paid)
        .fold(0, (sum, o) => sum + o.total);
  }
}
