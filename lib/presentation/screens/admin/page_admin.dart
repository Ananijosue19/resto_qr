import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

import '../../widgets/ContainerIconTextText.dart';

class PageAdmin extends StatelessWidget {
  const PageAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          child: Row(
            spacing: 20,
            children: [
              Icon(Remix.cake_3_line, color: Colors.orange, size: 34),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text(
                    'Tableau de Bord',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('Gestion des commandes', style: TextStyle(fontSize: 16)),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  ContainerIconTextText(
                    icon: Remix.cake_3_line,
                    text: '1',
                    subText: 'En attente',
                  ),
                  ContainerIconTextText(
                    icon: Remix.cake_3_line,
                    text: '1',
                    subText: 'En attente',
                  ),
                  ContainerIconTextText(
                    icon: Remix.cake_3_line,
                    text: '1',
                    subText: 'En attente',
                  ),
                  ContainerIconTextText(
                    icon: Remix.cake_3_line,
                    text: '1',
                    subText: 'En attente',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
