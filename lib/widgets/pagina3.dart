import 'package:flutter/material.dart';
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