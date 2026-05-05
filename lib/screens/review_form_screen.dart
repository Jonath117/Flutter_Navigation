import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/review_bloc.dart';

class ReviewFormScreen extends StatelessWidget {
  final int taskId;
  final String taskTitle;

  const ReviewFormScreen({
    super.key,
    required this.taskId,
    required this.taskTitle,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReviewBloc(),
      child: _ReviewFormBody(taskId: taskId, taskTitle: taskTitle),
    );
  }
}

class _ReviewFormBody extends StatelessWidget {
  final int taskId;
  final String taskTitle;

  const _ReviewFormBody({required this.taskId, required this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Revisar: $taskTitle')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: BlocBuilder<ReviewBloc, ReviewState>(
          builder: (context, state) {
            final aprobado = state is ReviewInitial ? state.approved : false;

            return Column(
              children: [
                Text('Tarea #$taskId'),
                SwitchListTile(
                  title: Text('¿Aprobado?'),
                  value: aprobado,
                  onChanged: (valor) {
                    context.read<ReviewBloc>().add(
                      ToggleApproval(value: valor),
                    );
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
            );
          },
        ),
      ),
    );
  }
}
