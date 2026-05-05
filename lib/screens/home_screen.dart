import 'package:flutter/material.dart';
import 'package:flutter_app_navigations/blocs/task_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app_navigations/screens/task_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  static String path = '/';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home -- Mis Tareas")),
      body: BlocBuilder<TaskBloc, TaskState>(
        builder: (context, state) {
          if (state is TaskInitial) {
            context.read<TaskBloc>().add(LoadTasks());
          }

          if (state is TaskListLoaded) {
            return ListView.builder(
              itemCount: state.tasks.length,
              itemBuilder: (context, index) {
                final task = state.tasks[index];
                return ListTile(
                  title: Text(task.title),
                  subtitle: Text('Asignado a: ${task.assignee}'),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      TaskDetailScreen.path,
                      arguments: task,
                    );
                  },
                );
              },
            );
          }
          return Center(child: Text('Algo salio mal'));
        },
      ),
    );
  }
}
