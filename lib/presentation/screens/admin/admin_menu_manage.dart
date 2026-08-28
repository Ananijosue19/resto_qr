import 'package:flutter/material.dart';
import 'package:resto_qr/core/utils/dish_data.dart';

class AdminMenuManage extends StatefulWidget {
  const AdminMenuManage({super.key});

  @override
  State<AdminMenuManage> createState() => _AdminMenuManageState();
}

class _AdminMenuManageState extends State<AdminMenuManage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gestion du Menu')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: mockDishes.length,
        itemBuilder: (context, index) {
          final dish = mockDishes[index];
          return Card(
            child: ListTile(
              leading: Image.network(dish.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
              title: Text(dish.name),
              subtitle: Text('${dish.price.toInt()} CFA'),
              trailing: Switch(
                value: dish.isAvailable,
                onChanged: (value) {
                  setState(() {
                    // En réalité, il faudrait mettre à jour via un Provider
                    // mais ici mockDishes est une liste globale mutable
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
