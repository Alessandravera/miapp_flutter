import 'package:flutter/material.dart';
import 'package:miapp_flutter/contact.dart';
import 'package:miapp_flutter/menu.dart';
import 'package:miapp_flutter/routes/approute.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffe Shop', 
      routes: Approute.routes,
      initialRoute: '/home',
      );
   }
}