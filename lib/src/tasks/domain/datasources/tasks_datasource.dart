import 'package:tasks_app/src/tasks/domain/domain.dart';

abstract class TasksDataSource {
  Future<void> insert(Task task);
  Future<void> update(Task task);
  Future<void> delete(int id);
  Future<Task?> getByID(int id);
  Future<List<Task>> getAll();
}
