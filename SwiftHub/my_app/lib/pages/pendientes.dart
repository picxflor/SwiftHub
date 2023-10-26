import 'package:flutter/material.dart';

class PendientesPage extends StatelessWidget {
  const PendientesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var completedTasks = [
      'Tarea 1',
      'Tarea 2',
      'Tarea 3',
      'Tarea 4',
      'Tarea 5',
      'Tarea 6',
      'Tarea 7',
      'Tarea 8',
      'Tarea 9',
      'Tarea 10',
      'Tarea 11',
      'Tarea 12',
      'Tarea 13',
      'Tarea 14',
      'Tarea 15',
     ];
     return Scaffold(
      appBar: AppBar(
        title: Text('Tareas Pendientes'),
      ),
      body: ListView.builder(
        itemCount: completedTasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(completedTasks[index]),
            leading: Icon(Icons.clear),
          );
        },
      ),
    );
  }
}