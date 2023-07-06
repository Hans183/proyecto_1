import 'package:flutter/material.dart';

void main() {
  runApp(const ConfiguracionApp());
}

class ConfiguracionApp extends StatelessWidget {
  const ConfiguracionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Configuración App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ConfiguracionPage(),
    );
  }
}

class ConfiguracionPage extends StatelessWidget {
  const ConfiguracionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración'),
      ),
      body: const Center(
        child: Text(
          'Página de configuración',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
