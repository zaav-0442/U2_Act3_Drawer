import 'package:flutter/material.dart';
import 'pages/home.dart'; // Importamos la nueva Home
import 'pages/pizzas.dart';
import 'pages/bebidas.dart';
import 'pages/postres.dart';
import 'pages/extras.dart';

void main() => runApp(const FreddysApp());

class FreddysApp extends StatelessWidget {
  const FreddysApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Freddy's Pizza",
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF171717),
        primaryColor: const Color(0xFFD642A7),
        // Estilo visual general
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
        ),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/pizzas': (context) => const PizzaPage(),
        '/bebidas': (context) => const BebidaPage(),
        '/postres': (context) => const PostrePage(),
        '/extras': (context) => const ExtraPage(),
      },
    );
  }
}