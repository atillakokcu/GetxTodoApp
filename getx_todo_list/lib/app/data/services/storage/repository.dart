import 'package:getx_todo_list/app/data/models/task.dart';
import 'package:getx_todo_list/app/data/providers/task/provider.dart';

class TaskRepository {
  TaskProvider taskProvider;
  TaskRepository({required this.taskProvider});

  List<Task> readTask() => taskProvider.readTask();
  void writeTasks(List<Task> task) => taskProvider.writeTask(task);
}
