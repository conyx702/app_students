import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildResumen(),
            const SizedBox(height: 20),
            _buildAcciones(context),
          ],
        ),
      ),
    );
  }

  Widget _buildResumen() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Card(child: Padding(padding: EdgeInsets.all(8), child: Text('Tareas: 12'))),
        Card(child: Padding(padding: EdgeInsets.all(8), child: Text('Completadas: 8'))),
      ],
    );
  }

  Widget _buildAcciones(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(onPressed: () {}, child: const Text('Agregar Tarea')),
        ElevatedButton(onPressed: () {}, child: const Text('Ver Todo')),
      ],
    );
  }
}

