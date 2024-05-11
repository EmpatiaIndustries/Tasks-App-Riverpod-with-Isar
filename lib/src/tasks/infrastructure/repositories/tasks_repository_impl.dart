import 'package:tasks_app/src/tasks/domain/domain.dart';

class TasksRepositoryImpl extends TasksRepository {
  final TasksDataSource dataSource;

  TasksRepositoryImpl({required this.dataSource});

  @override
  Future<List<Task>> getTasks() {
    return dataSource.getAll();
  }

  @override
  Future<void> createTask(Task task) {
    return dataSource.insert(task);
  }

  @override
  Future<void> deleteTask(int id) {
    return dataSource.delete(id);
  }

  @override
  Future<Task?> getTaskByID(int id) {
    return dataSource.getByID(id);
  }

  @override
  Future<void> updateTask(Task task) {
    return dataSource.update(task);
  }
}
