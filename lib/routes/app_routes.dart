import 'package:flutter/material.dart';
import 'package:resto_qr/presentation/screens/menu.dart';
import 'package:resto_qr/presentation/screens/suivie_commande.dart';

import '../presentation/screens/admin/page_admin.dart';
import '../presentation/screens/home.dart';
import '../presentation/screens/panier.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/menu': (context) => Menu(),
  '/panier': (context) => Panier(),
  '/suivie': (context) => SuivieCommande(),
  '/pageAdmin': (context) => PageAdmin(),
};
