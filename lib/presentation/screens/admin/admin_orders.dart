import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:remixicon/remixicon.dart';
import '../../../core/models/order.dart';
import '../../../core/providers/order_provider.dart';

class AdminOrders extends StatelessWidget {
  const AdminOrders({super.key});

  @override
  Widget build(BuildContext context) {
    final orderProvider = Provider.of<OrderProvider>(context);
    final activeOrders = orderProvider.activeOrders;

    return Scaffold(
      appBar: AppBar(title: const Text('Gestion des Commandes')),
      body: activeOrders.isEmpty
          ? const Center(child: Text('Aucune commande en cours'))
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: activeOrders.length,
              itemBuilder: (context, index) {
                final order = activeOrders[index];
                return _buildOrderCard(context, order, orderProvider);
              },
            ),
    );
  }

  Widget _buildOrderCard(BuildContext context, OrderModel order, OrderProvider provider) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: ExpansionTile(
        leading: CircleAvatar(
          backgroundColor: Colors.deepOrangeAccent,
          child: Text('${order.tableNumber}', style: const TextStyle(color: Colors.white)),
        ),
        title: Text('Commande #${order.id.substring(0, 4)}'),
        subtitle: Text('Status: ${order.statusText}'),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...order.items.map((item) => Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${item.quantity}x ${item.dish.name}'),
                      Text('${(item.dish.price * item.quantity).toInt()} CFA'),
                    ],
                  ),
                )),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('TOTAL', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('${order.total.toInt()} CFA', style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 16),
                const Text('Changer le statut :', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: [
                    _statusButton(context, order, provider, OrderStatus.preparing, 'Cuisine', Colors.blue),
                    _statusButton(context, order, provider, OrderStatus.served, 'Servi', Colors.orange),
                    _statusButton(context, order, provider, OrderStatus.paid, 'Payé', Colors.green),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _statusButton(BuildContext context, OrderModel order, OrderProvider provider, OrderStatus status, String label, Color color) {
    return ActionChip(
      label: Text(label, style: const TextStyle(color: Colors.white, fontSize: 12)),
      backgroundColor: color,
      onPressed: () => provider.updateOrderStatus(order.id, status),
    );
  }
}
