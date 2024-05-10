import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tasks_app/src/tasks/domain/domain.dart';
import 'package:tasks_app/src/tasks/infrastructure/infrastructure.dart';

part 'tasks_providers.g.dart';

@Riverpod(keepAlive: true)
class SelectedTask extends _$SelectedTask {
  @override
  Task build() => Task(
        userID: '',
        content: '',
      );

  void updateSelectedTask(Task task) {
    state = task;
  }
}

@Riverpod(keepAlive: true)
TasksRepositoryImpl taskRepository(TaskRepositoryRef ref) {
  return TasksRepositoryImpl(dataSource: MockTasksDatasourceImpl());
}

@Riverpod(keepAlive: true)
Future<List<Task>> getTasks(GetTasksRef ref) {
  final tasksRepository = ref.watch(taskRepositoryProvider);
  return tasksRepository.getTasks();
}

// @Riverpod(keepAlive: true)
// class AddTask extends _$AddTask {
//   Future<void> createTask(AddTasksRef ref) {
//     final tasksRepository = ref.watch(taskRepositoryProvider);
//     return tasksRepository.createTask();
//   }
// }
