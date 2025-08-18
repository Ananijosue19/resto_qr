import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

import '../widgets/NewContainer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Déterminer le type d'écran
            final isSmallScreen = constraints.maxWidth < 600;
            final isMediumScreen =
                constraints.maxWidth >= 600 && constraints.maxWidth < 1200;
            final isLargeScreen = constraints.maxWidth >= 1200;

            // Adapter les tailles selon l'écran
            final iconSize = isSmallScreen
                ? constraints.maxWidth / 5
                : isMediumScreen
                ? constraints.maxWidth / 8
                : 150.0;

            final titleFontSize = isSmallScreen
                ? 28.0
                : isMediumScreen
                ? 36.0
                : 42.0;
            final subtitleFontSize = isSmallScreen
                ? 14.0
                : isMediumScreen
                ? 16.0
                : 18.0;
            final tableFontSize = isSmallScreen
                ? 26.0
                : isMediumScreen
                ? 30.0
                : 36.0;

            // Padding adaptatif
            final screenPadding = isSmallScreen
                ? 16.0
                : isMediumScreen
                ? 24.0
                : 40.0;

            // Espacement adaptatif
            final spacing = isSmallScreen
                ? 20.0
                : isMediumScreen
                ? 30.0
                : 40.0;

            return SingleChildScrollView(
              child: Center(
                child: Container(
                  constraints: BoxConstraints(maxWidth: 1200),
                  padding: EdgeInsets.all(screenPadding),
                  child: Column(
                    children: [
                      // Logo et titre
                      Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 10,
                        children: [
                          Icon(
                            Remix.cake_3_fill,
                            color: Colors.deepOrangeAccent,
                            size: iconSize,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: isSmallScreen
                                ? CrossAxisAlignment.center
                                : CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Le Gourmet',
                                style: TextStyle(
                                  fontSize: titleFontSize,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: isSmallScreen
                                    ? TextAlign.center
                                    : TextAlign.left,
                              ),
                              Text(
                                'Restaurant & Brasserie',
                                style: TextStyle(fontSize: subtitleFontSize),
                                textAlign: isSmallScreen
                                    ? TextAlign.center
                                    : TextAlign.left,
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: spacing),

                      // Carte Table
                      Container(
                        width: isLargeScreen ? 500 : double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFF1d293d),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: isSmallScreen ? 20 : 30,
                          vertical: isSmallScreen ? 15 : 20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Table 12',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: tableFontSize,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Bienvenue à votre table',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: subtitleFontSize,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: spacing),

                      // Grille des caractéristiques
                      LayoutBuilder(
                        builder: (context, constraints) {
                          final crossAxisCount = isSmallScreen
                              ? 1
                              : isMediumScreen
                              ? 3
                              : 3;

                          return GridView.count(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            crossAxisCount: crossAxisCount,
                            childAspectRatio: isSmallScreen ? 1.5 : 1.2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            children: [
                              NewContainer(
                                myIcon: Remix.star_line,
                                myText: 'Menu Gastronomique',
                                myDesc:
                                    'Découvrez nos plats préparés avec des produits frais et de saison',
                                isSmallScreen: isSmallScreen,
                              ),
                              NewContainer(
                                myIcon: Remix.time_line,
                                myText: 'Service Rapide',
                                myDesc:
                                    'Commandez directement depuis votre table et suivez votre commande en temps réel',
                                isSmallScreen: isSmallScreen,
                              ),
                              NewContainer(
                                myIcon: Remix.cake_3_fill,
                                myText: 'Chef Expérimenté',
                                myDesc:
                                    'Notre chef vous propose une cuisine créative et raffinée',
                                isSmallScreen: isSmallScreen,
                              ),
                            ],
                          );
                        },
                      ),

                      SizedBox(height: spacing),

                      // Bouton
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width / 2,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape:
                                WidgetStatePropertyAll<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                            backgroundColor: WidgetStatePropertyAll<Color>(
                              Colors.deepOrangeAccent,
                            ),
                            padding: WidgetStatePropertyAll<EdgeInsets>(
                              EdgeInsets.symmetric(
                                vertical: isSmallScreen ? 12 : 15,
                                horizontal: isSmallScreen ? 30 : 50,
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/menu');
                          },
                          child: Text(
                            'Voir le Menu',
                            style: TextStyle(
                              fontSize: isSmallScreen ? 16 : 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
