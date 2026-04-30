class TaskModel {
  final int id;
  final String title;
  final String status;
  final String assignee;
  final String description;

  TaskModel({
    required this.id,
    required this.title,
    required this.status,
    required this.assignee,
    required this.description,
  });
}
