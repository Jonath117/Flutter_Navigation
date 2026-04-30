import 'package:flutter/material.dart';
import '../models/task_model.dart';

class HomeScreen extends StatelessWidget {
  static String path = '/';

  HomeScreen({super.key});

  final List<TaskModel> tareas = [
    TaskModel(
      id: 1,
      title: "Tarea 1",
      status: "Pendiente",
      assignee: "Jonathan",
      description: "Hacer la tarea 1",
    ),
    TaskModel(
      id: 2,
      title: "Actualizar datos",
      status: "en progreso",
      assignee: "Enzo",
      description: "Migrar base de datos",
    ),
    TaskModel(
      id: 3,
      title: "Terminar tarea Power BI",
      status: "atrasada",
      assignee: "Enzo",
      description: "terminar el dashboard",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home -- Mis Tareas")),
      body: ListView.builder(
        itemCount: tareas.length,
        itemBuilder: (context, index) {
          final tarea = tareas[index];
          return ListTile(
            title: Text(tarea.title),
            subtitle: Text('${tarea.status} - ${tarea.assignee}'),
            onTap: () {
              Navigator.pushNamed(context, '/task-detail', arguments: tarea);
            },
          );
        },
      ),
    );
  }
}
