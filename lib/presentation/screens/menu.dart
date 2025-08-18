import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

import '../../core/utils/listItem.dart';

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
            child: ElevatedButton.icon(
              icon: Icon(Remix.shopping_cart_line, color: Colors.white),
              style: ButtonStyle(
                shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                backgroundColor: WidgetStatePropertyAll<Color>(
                  Colors.deepOrangeAccent,
                ),
                padding: WidgetStatePropertyAll<EdgeInsets>(
                  EdgeInsets.symmetric(
                    vertical: MediaQuery.sizeOf(context).width < 600 ? 12 : 15,
                    horizontal: MediaQuery.sizeOf(context).width < 600
                        ? 10
                        : 30,
                  ),
                ),
              ),
              onPressed: () {},
              label: Text('Panier', style: TextStyle(color: Colors.white)),
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
            /*SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  categorie.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(
                      right: 18.0,
                      top: 10,
                      bottom: 10,
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        backgroundColor: WidgetStatePropertyAll<Color>(
                          Colors.deepOrangeAccent,
                        ),
                        padding: WidgetStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(
                            vertical: MediaQuery.sizeOf(context).width < 600
                                ? 12
                                : 15,
                            horizontal: MediaQuery.sizeOf(context).width < 600
                                ? 20
                                : 30,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        categorie[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),*/
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
                                return Card(color: Colors.red);
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
