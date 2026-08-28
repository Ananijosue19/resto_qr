import '../providers/cart_provider.dart';

enum OrderStatus { pending, preparing, served, paid, cancelled }

class OrderModel {
  final String id;
  final List<CartItem> items;
  final double total;
  final int tableNumber;
  final DateTime timestamp;
  OrderStatus status;

  OrderModel({
    required this.id,
    required this.items,
    required this.total,
    required this.tableNumber,
    required this.timestamp,
    this.status = OrderStatus.pending,
  });

  String get statusText {
    switch (status) {
      case OrderStatus.pending: return 'En attente';
      case OrderStatus.preparing: return 'En préparation';
      case OrderStatus.served: return 'Servi';
      case OrderStatus.paid: return 'Payé';
      case OrderStatus.cancelled: return 'Annulé';
    }
  }
}
