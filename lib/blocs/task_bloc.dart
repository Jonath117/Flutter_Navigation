import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/task_model.dart';

abstract class TaskEvent {}

class LoadTasks extends TaskEvent {}

abstract class TaskState {}

class TaskInitial extends TaskState {}

class TaskListLoaded extends TaskState {
  final List<TaskModel> tasks;

  TaskListLoaded({required this.tasks});
}

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskInitial()) {
    on<LoadTasks>(_onLoadTasks);
  }

  void _onLoadTasks(LoadTasks event, Emitter<TaskState> emit) {
    final List<TaskModel> tasks = [
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
    emit(TaskListLoaded(tasks: tasks));
  }
}
