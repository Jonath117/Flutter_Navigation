import 'package:flutter/material.dart';
import '../models/task_model.dart';
import 'review_form_screen.dart';

class TaskDetailScreen extends StatelessWidget {
  static String path = '/task-detail';

  const TaskDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tarea = ModalRoute.of(context)!.settings.arguments as TaskModel;

    return Scaffold(
      appBar: AppBar(title: Text(tarea.title)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${tarea.id}'),
            Text('Description: ${tarea.description}'),
            Text('Asignado: ${tarea.assignee}'),
            Text('Estado: ${tarea.status}'),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  final resultado = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReviewFormScreen(
                        taskId: tarea.id,
                        taskTitle: tarea.title,
                      ),
                    ),
                  );

                  if (resultado != null && context.mounted) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Resultado'),
                        content: Text('Aprobado: $resultado'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Text('Enviar Revisión'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
