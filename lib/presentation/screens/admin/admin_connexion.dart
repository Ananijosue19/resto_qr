import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class AdminConnexion extends StatelessWidget {
  const AdminConnexion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  spacing: 20,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Remix.cake_3_fill,
                      color: Colors.orangeAccent,
                      size: 50,
                    ),
                    const Text(
                      'Administration',
                      style: TextStyle(fontSize: 26),
                    ),
                    const Text(
                      'Le Gourmet - Espace Restaurateur',
                      style: TextStyle(fontSize: 16),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Email'),
                          Container(
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'admin@restaurant.com',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Mot de passe'),
                          Container(
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '..........',
                              ),
                              showCursor: false,
                              obscureText: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          foregroundColor: WidgetStatePropertyAll(Colors.white),
                          backgroundColor: WidgetStatePropertyAll(
                            Colors.deepOrangeAccent,
                          ),
                        ),
                        icon: Icon(Remix.login_box_line),
                        onPressed: () {
                          Navigator.pushNamed(context, '/pageAdmin');
                        },
                        label: Text('Se connecter'),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Retour à l'accueil client"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
