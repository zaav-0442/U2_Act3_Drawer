import 'package:flutter/material.dart';
import '../drawer_menu.dart';

class PostrePage extends StatelessWidget {
  const PostrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Freddy's Pizzas", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFFD642A7),
      ),
      drawer: const DrawerMenu(currentRoute: '/postres'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://raw.githubusercontent.com/zaav-0442/U2_Act3_Drawer/refs/heads/main/pags/postres.webp",
                width: 200, height: 200, fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Ahora estás en la página de Postres",
              style: TextStyle(color: Color(0xFFD642A7), fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Las especialidades más azucaradas para tu paladar.",
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