import 'package:flutter/material.dart';
import 'package:resto_qr/presentation/screens/admin/admin_connexion.dart';
import 'package:resto_qr/presentation/screens/admin/admin_dashboard.dart';
import 'package:resto_qr/presentation/screens/admin/admin_menu_manage.dart';
import 'package:resto_qr/presentation/screens/admin/admin_orders.dart';
import 'package:resto_qr/presentation/screens/menu.dart';
import 'package:resto_qr/presentation/screens/suivie_commande.dart';

import '../presentation/screens/home.dart';
import '../presentation/screens/panier.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/menu': (context) => const Menu(),
  '/panier': (context) => const Panier(),
  '/suivie': (context) => const SuivieCommande(),
  '/admin': (context) => const AdminConnexion(),
  '/admin/dashboard': (context) => const AdminDashboard(),
  '/admin/orders': (context) => const AdminOrders(),
  '/admin/menu': (context) => const AdminMenuManage(),
};
