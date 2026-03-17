import 'package:flutter/material.dart';
import '../drawer_menu.dart';

class PizzaPage extends StatelessWidget {
  const PizzaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Freddy's Pizzas", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFFD642A7),
      ),
      drawer: const DrawerMenu(currentRoute: '/pizzas'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://raw.githubusercontent.com/zaav-0442/U2_Act3_Drawer/refs/heads/main/pags/pizzas.jpg",
                width: 200, height: 200, fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Ahora estás en la página de Pizzas",
              style: TextStyle(color: Color(0xFFD642A7), fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Las mejores especialidades con el queso más fundido de Juárez.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}