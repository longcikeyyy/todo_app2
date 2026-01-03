import 'package:todo_app/models/task.dart';

class AppData {
  static List<Task> taskList = [
    Task(taskName: 'Design team meeting', isCompleted: true),
    Task(taskName: 'Work on UI design', isCompleted: false),
    Task(taskName: 'Fix bugs in code', isCompleted: false),
    Task(taskName: 'Prepare for presentation', isCompleted: false),
    Task(taskName: 'Update project documentation', isCompleted: false),
  ];
}
