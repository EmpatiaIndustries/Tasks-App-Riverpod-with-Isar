import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tasks_app/src/tasks/domain/domain.dart';

abstract class TasksDataSource {
  Future<List<Task>> fetchAllTasks(NotifierProviderRef ref);
}
