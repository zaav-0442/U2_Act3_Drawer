import 'package:flutter/material.dart';
import '../drawer_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Freddy's Pizza - Inicio", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFFD642A7), // Color Primario
      ),
      drawer: const DrawerMenu(currentRoute: '/home'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Banner Principal
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://raw.githubusercontent.com/zaav-0442/U2_Act3_Drawer/refs/heads/main/inicio.webp",
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "¡BIENVENIDO A FREDDY'S!",
              style: TextStyle(
                color: Color(0xFF25CF1B), // Color Secundario Neón
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Zoé Aranza Alva Vazquez 6°J",
              style: TextStyle(color: Color(0xFFD4A83D), fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}