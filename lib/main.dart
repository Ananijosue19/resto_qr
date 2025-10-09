import 'package:flutter/material.dart';
import 'package:resto_qr/presentation/screens/admin/admin_connexion.dart';
import 'package:resto_qr/presentation/screens/home.dart';
import 'package:resto_qr/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
      home: const AdminConnexion(),
    );
  }
}
