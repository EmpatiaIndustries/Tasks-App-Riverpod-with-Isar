import 'package:tasks_app/src/tasks/domain/domain.dart';

abstract class TasksRepository {
  Future<List<Task>> getTasks();
}
