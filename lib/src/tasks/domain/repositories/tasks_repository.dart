import 'package:tasks_app/src/tasks/domain/domain.dart';

abstract class TasksRepository {
  Future<void> createTask(Task task);
  Future<void> updateTask(Task task);
  Future<void> deleteTask(int id);
  Future<Task?> getTaskByID(int id);
  Future<List<Task>> getTasks();
}
