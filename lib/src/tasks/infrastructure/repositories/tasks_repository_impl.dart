import 'package:tasks_app/src/tasks/domain/domain.dart';
import 'package:tasks_app/src/tasks/infrastructure/infrastructure.dart';

class TasksRepositoryImpl extends TasksRepository {
  final TasksDataSource dataSource;

  TasksRepositoryImpl({TasksDataSource? dataSource})
      : dataSource = dataSource ?? TasksDataSourceImpl();

  @override
  Future<List<Task>> getTasks() {
    return dataSource.fetchAllTasks();
  }
}
