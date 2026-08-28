import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:remixicon/remixicon.dart';
import '../../../core/providers/order_provider.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final orderProvider = Provider.of<OrderProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Restaurateur'),
        actions: [
          IconButton(
            icon: const Icon(Remix.logout_box_line),
            onPressed: () => Navigator.pushReplacementNamed(context, '/admin'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Aujourd\'hui',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                _buildStatCard(
                  context,
                  'Commandes',
                  '${orderProvider.orders.length}',
                  Remix.shopping_bag_3_line,
                  Colors.blue,
                ),
                const SizedBox(width: 16),
                _buildStatCard(
                  context,
                  'CA Total',
                  '${orderProvider.todayRevenue.toInt()} CFA',
                  Remix.money_euro_circle_line,
                  Colors.green,
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Actions Rapides',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildActionTile(
              context,
              'Gérer les Commandes',
              '${orderProvider.activeOrders.length} en cours',
              Remix.restaurant_line,
              '/admin/orders',
            ),
            _buildActionTile(
              context,
              'Gestion du Menu',
              'Activer/Désactiver des plats',
              Remix.book_read_line,
              '/admin/menu',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(BuildContext context, String title, String value, IconData icon, Color color) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: color, size: 30),
              const SizedBox(height: 12),
              Text(title, style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 4),
              Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionTile(BuildContext context, String title, String subtitle, IconData icon, String route) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(icon, color: Colors.deepOrangeAccent),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Remix.arrow_right_s_line),
        onTap: () => Navigator.pushNamed(context, route),
      ),
    );
  }
}
