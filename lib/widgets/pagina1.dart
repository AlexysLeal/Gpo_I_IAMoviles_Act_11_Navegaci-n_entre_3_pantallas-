import 'package:flutter/material.dart';
class PaginaInicio extends StatelessWidget {
  const PaginaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Página Inicio",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/segunda'),
              icon: const Icon(Icons.arrow_forward),
              label: const Text("Ir a la Segunda Página"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[100]),
            ),
          ],
        ),
      ),
    );
  }
}