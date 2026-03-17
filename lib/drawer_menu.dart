import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  final String currentRoute;
  const DrawerMenu({super.key, required this.currentRoute});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF171717),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _buildHeader(),
          ListTile(
            leading: Icon(Icons.home, color: currentRoute == '/home' ? const Color(0xFFD4A83D) : Colors.white),
            title: const Text("Inicio", style: TextStyle(color: Colors.white)),
            selected: currentRoute == '/home',
            onTap: () {
              if (currentRoute != '/home') {
                Navigator.pushReplacementNamed(context, '/home');
              }
            },
          ),
          Divider(color: Colors.white24),
          _buildItem(context, Icons.local_pizza, "Pizzas", '/pizzas', const Color(0xFFD642A7)),
          _buildItem(context, Icons.local_drink, "Bebidas", '/bebidas', const Color(0xFF25CF1B)),
          _buildItem(context, Icons.icecream, "Postres", '/postres', const Color(0xFFD4A83D)),
          _buildItem(context, Icons.add_box, "Extras", '/extras', const Color.fromARGB(255, 34, 203, 255)),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return DrawerHeader(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://raw.githubusercontent.com/zaav-0442/U2_Act3_Drawer/refs/heads/main/inicio.webp"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text("Freddy's", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
          Text("Nueva Zelanda 7870, Oasis, Juárez", style: TextStyle(color: Colors.white70, fontSize: 10)),
          Text("+52 656 662 9275", style: TextStyle(color: Colors.white70, fontSize: 10)),
          Text("a.23308051280442@cbtis128.edu.mx", style: TextStyle(color: Colors.white70, fontSize: 9)),
        ],
      ),
    );
  }

  Widget _buildItem(BuildContext context, IconData icon, String title, String route, Color neonColor) {
    // Comparamos si la ruta del botón es la misma en la que estamos parados
    bool isSelected = currentRoute == route;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: isSelected ? BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: neonColor, width: 2),
        boxShadow: [
          BoxShadow(color: neonColor.withOpacity(0.5), blurRadius: 10, spreadRadius: 1)
        ],
      ) : null,
      child: ListTile(
        leading: Icon(icon, color: isSelected ? neonColor : Colors.white),
        title: Text(title, style: TextStyle(
          color: Colors.white, 
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal
        )),
        onTap: () {
          // Cierra el drawer antes de navegar
          Navigator.pop(context); 
          
          // Solo navega si NO estamos en esa página actualmente
          if (!isSelected) {
            Navigator.pushReplacementNamed(context, route);
          }
        },
      ),
    );
  }
}