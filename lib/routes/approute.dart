import 'package:flutter/material.dart';
import 'package:miapp_flutter/contact.dart';
import 'package:miapp_flutter/home.dart';
import 'package:miapp_flutter/menu.dart';


class Approute {
  static const initialroute = '/menu';
  static const routecontact = '/contact';

  static Map<String, Widget Function(BuildContext)> routes = { 
        '/contact': (context) => const ContactPage(),
        '/menu': (context) => const MenuPage(),
        '/home': (context) => const HomePage(),
        };
}