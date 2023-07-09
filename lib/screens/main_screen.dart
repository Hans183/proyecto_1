import 'package:flutter/material.dart';
import 'package:proyecto_1/pages/configuracion.dart';
import 'package:proyecto_1/pages/contador.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    //final colors = Theme.of(context).colorScheme;

    final screens = [const ContView(), const ConfView()];

    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 15.0,
        ),
        selectedLabelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 15.0,
        ),
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        iconSize: 20,
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_outlined),
            label: 'Contador',
            backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            label: 'Configuración',
            backgroundColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
