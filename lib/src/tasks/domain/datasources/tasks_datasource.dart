import 'package:tasks_app/src/tasks/domain/domain.dart';

abstract class TasksDataSource {
  Future<List<Task>> fetchAllTasks();

  Future<Task> createTask(Task task);
}
