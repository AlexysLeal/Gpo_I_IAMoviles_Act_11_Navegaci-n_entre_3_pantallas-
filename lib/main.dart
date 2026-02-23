import 'package:flutter/material.dart';

void main() {
  runApp(const MiCatalogoApp());
}

class MiCatalogoApp extends StatelessWidget {
  const MiCatalogoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegación Flutter',
      // 1. Definimos la ruta inicial
      initialRoute: '/',
      // 2. Definimos el "Mapa de Rutas"
      routes: {
        '/': (context) => const PaginaInicio(),
        '/segunda': (context) => const SegundaPagina(),
        '/tercera': (context) => const TerceraPagina(),
      },
    );
  }
}

// --- PÁGINA 1: INICIO ---
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

// --- PÁGINA 2: SEGUNDA ---
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

// --- PÁGINA 3: TERCERA ---
class TerceraPagina extends StatelessWidget {
  const TerceraPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tercera Página", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container solicitado de 200x200
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: const Center(child: Text("200 x 200")),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false),
              child: const Text("Volver al Inicio (Reset)"),
            ),
          ],
        ),
      ),
    );
  }
}