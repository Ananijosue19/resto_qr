import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class SuivieCommande extends StatefulWidget {
  const SuivieCommande({super.key});

  @override
  State<SuivieCommande> createState() => _SuivieCommandeState();
}

class _SuivieCommandeState extends State<SuivieCommande> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Suivi de Commande')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 20,
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  child: Column(
                    spacing: 30,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          spacing: 10,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Commande #087421',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text('Table 12 • 10:58'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              child: Icon(Remix.time_line),
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.red,
                              radius: 25,
                            ),
                            CircleAvatar(
                              child: Icon(Remix.cake_3_fill),
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.deepOrange,
                              radius: 25,
                            ),
                            CircleAvatar(
                              child: Icon(Remix.task_line),
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.green,
                              radius: 25,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 10,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('En attente'),
                            style: ButtonStyle(
                              shape:
                                  WidgetStatePropertyAll<
                                    RoundedRectangleBorder
                                  >(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadiusGeometry.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                  ),
                              backgroundColor: WidgetStatePropertyAll<Color>(
                                Colors.red,
                              ),
                              foregroundColor: WidgetStatePropertyAll(
                                Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Text(
                              textAlign: TextAlign.center,
                              'Votre commande a été reçue et est en attente de préparation',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Text(
                              'Temps dattente estimé: 5 minutes',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 20,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Détails de la commande',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('1x Salade de Chèvre Chaud'),
                            Text('3500 CFA'),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total'),
                            Text('3500 CFA', style: TextStyle(color: Colors.red)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Ajouter des plats',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Text('Cette page se met à jour automatiquement'),
            ],
          ),
        ),
      ),
    );
  }
}
