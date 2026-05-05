import 'package:flutter/material.dart';

class ReviewFormScreen extends StatefulWidget {
  final int taskId;
  final String taskTitle;

  const ReviewFormScreen({
    super.key,
    required this.taskId,
    required this.taskTitle,
  });

  @override
  _ReviewFormScreenState createState() => _ReviewFormScreenState();
}

class _ReviewFormScreenState extends State<ReviewFormScreen> {
  bool aprobado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Revisar: ${widget.taskTitle}')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Tarea #${widget.taskId}'),
            SwitchListTile(
              title: Text('¿Aprobado?'),
              value: aprobado,
              onChanged: (valor) {
                setState(() {
                  aprobado = valor;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, aprobado);
              },
              child: Text('Enviar Revisión'),
            ),
          ],
        ),
      ),
    );
  }
}
