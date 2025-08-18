import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

import '../../core/utils/listItem.dart';
import '../widgets/BtnIconText.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    final siz = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        shape: Border(bottom: BorderSide(color: Colors.grey)),
        title: Text('Menu'),
        actions: [
          Badge(
            padding: EdgeInsets.all(5),
            label: Text('1'),
            child: BtnIconText(
              text: 'Panier',
              icon: Remix.shopping_cart_line,
              onPressed: () {
                Navigator.pushNamed(context, '/panier');
              },
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SearchBar(
              leading: Icon(Remix.search_line),
              hintText: 'Rechercher un plat ...',
              shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              ),
              elevation: WidgetStatePropertyAll(0),
            ),
            SizedBox(height: 10),
            Expanded(
              child: DefaultTabController(
                initialIndex: 0,
                length: categorie.length,
                child: Column(
                  children: [
                    ButtonsTabBar(
                      // Style du tab sélectionné
                      backgroundColor: Colors.deepOrangeAccent,
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),

                      // Style du tab non sélectionné
                      unselectedBackgroundColor: Colors.transparent,
                      unselectedLabelStyle: const TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.bold,
                      ),
                      // Bordures
                      borderWidth: 1,
                      borderColor: Colors.deepOrangeAccent,
                      unselectedBorderColor: Colors.deepOrangeAccent,

                      // Coins arrondis + padding
                      radius: 20,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 8,
                      ),

                      tabs: List.generate(
                        categorie.length,
                        (index) => Tab(text: categorie[index]),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: TabBarView(
                          physics: PageScrollPhysics(),
                          children: List.generate(
                            categorie.length,
                            (index) => GridView.count(
                              crossAxisCount: siz < 600 ? 1 : 2,
                              children: List.generate(5, (index) {
                                return Card(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Image.network(
                                            'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg',
                                            fit: BoxFit.fill,
                                            width: double.infinity,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Padding(
                                          padding: EdgeInsetsGeometry.symmetric(
                                            horizontal: 20,
                                            vertical: 35,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Vin Rouge - Côtes du Rhône',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  Text(
                                                    '28.00€',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.redAccent,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  'Bouteille de vin rouge, millésime 2020',
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.greenAccent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            15,
                                                          ),
                                                    ),
                                                    padding:
                                                        EdgeInsetsGeometry.symmetric(
                                                          horizontal: 15,
                                                          vertical: 5,
                                                        ),
                                                    child: Text('Disponible'),
                                                  ),
                                                  BtnIconText(
                                                    text: 'Ajouter',
                                                    icon: Remix.add_fill,
                                                    onPressed: () {},
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                            ),
                          ),
                        ),
                      ),
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
