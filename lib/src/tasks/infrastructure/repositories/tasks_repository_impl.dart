import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tasks_app/src/tasks/domain/domain.dart';
import 'package:tasks_app/src/tasks/infrastructure/infrastructure.dart';

class TaskRepositoryImpl extends TasksRepository {
  final TasksDataSource dataSource;

  TaskRepositoryImpl({TasksDataSource? dataSource})
      : dataSource = dataSource ?? TasksDataSourceImpl();

  @override
  Future<List<Task>?> getTasks(NotifierProviderRef ref) {
    return dataSource.fetchAllTasks(ref);
  }
}
