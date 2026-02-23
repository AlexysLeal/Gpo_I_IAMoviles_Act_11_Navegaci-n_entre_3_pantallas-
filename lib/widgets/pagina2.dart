import 'package:flutter/material.dart';
class SegundaPagina extends StatelessWidget {
  const SegundaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda Página", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              // Imagen desde la red
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://picsum.photos/300/200',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/tercera'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Ir a la Tercera Página"),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Volver atrás"),
              )
            ],
          ),
        ),
      ),
    );
  }
}