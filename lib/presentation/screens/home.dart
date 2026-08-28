import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

import '../widgets/NewContainer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.small(
        onPressed: () => Navigator.pushNamed(context, '/admin'),
        backgroundColor: Colors.grey[200],
        child: const Icon(Remix.admin_line, color: Colors.black54),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
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
                          gradient: LinearGradient(
                            colors: [Color(0xFF1d293d), Color(0xFF2c3e50)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: isSmallScreen ? 24 : 40,
                          vertical: isSmallScreen ? 32 : 48,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent.withOpacity(0.2),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Remix.restaurant_2_fill,
                                color: Colors.deepOrangeAccent,
                                size: 32,
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Table 12',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: tableFontSize + 4,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 1.2,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Prêt à commander ?',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: subtitleFontSize,
                                fontWeight: FontWeight.w500,
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
