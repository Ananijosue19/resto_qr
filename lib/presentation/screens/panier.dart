import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

import '../widgets/NewContainerIcon.dart';

class Panier extends StatelessWidget {
  const Panier({super.key});

  @override
  Widget build(BuildContext context) {
    final bool notEmpty = false;
    return Scaffold(
      appBar: AppBar(title: Text('Panier')),
      body: notEmpty
          ? Flex(
              direction: Axis.vertical,
              mainAxisSize: MainAxisSize.min,
              spacing: 20.0,
              children: [
                Icon(Remix.shopping_bag_2_line, size: 100, color: Colors.grey),
                Text('Votre panier est vide', style: TextStyle(fontSize: 22)),
                Text(
                  textAlign: TextAlign.center,
                  'Ajoutez des plats depuis le menu pour commencer votre commande',
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.deepOrangeAccent,
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.sizeOf(context).width < 600
                          ? 12
                          : 15,
                      horizontal: MediaQuery.sizeOf(context).width < 600
                          ? 10
                          : 30,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Voir le Menu',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Wrap(
                spacing: 8,
                runSpacing: 4,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 3,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ✅ Image taille fixe
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                            ),
                            child: Image.network(
                              'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg',
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        // ✅ Contenu flexible
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Salade de Chèvre Chaud',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Icon(
                                      Remix.delete_bin_6_line,
                                      color: Colors.red,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Salade verte, chèvre chaud, noix, vinaigrette au miel',
                                  style: TextStyle(fontSize: 12),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        NewContainerIcon(
                                          myIcon: Remix.subtract_line,
                                        ),
                                        SizedBox(width: 8),
                                        Text('1'),
                                        SizedBox(width: 8),
                                        NewContainerIcon(
                                          myIcon: Remix.add_fill,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '12.50 €',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('Notes (optionnel)'),
                                    SizedBox(height: 4),
                                    SizedBox(
                                      height: 35,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText:
                                              'ex : sans sel, bien cuit...',
                                          labelStyle: TextStyle(fontSize: 12),
                                          border: OutlineInputBorder(),
                                          contentPadding: EdgeInsets.symmetric(
                                            horizontal: 8,
                                            vertical: 4,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        spacing: 30,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text('Résumer de la commande'),
                          ),
                          Column(
                            spacing: 10,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Sous-total'),
                                  Text(
                                    '12.50 €',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text('Service'), Text('inclus')],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Total'),
                                  Text(
                                    '12.50 €',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Commentaires pour la cuisine (optionnel)'),
                              SizedBox(height: 4),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText:
                                      ' Allergies , references de cuisson...',
                                  labelStyle: TextStyle(fontSize: 12),
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll<Color>(
                                  Colors.deepOrangeAccent,
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/suivie');
                              },
                              child: Text(
                                'Valider la Commande',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Text(
                            'Vous pouver suivre votre commande en temps réel',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
