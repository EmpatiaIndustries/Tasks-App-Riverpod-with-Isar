import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tasks_app/src/tasks/domain/domain.dart';
import 'package:tasks_app/src/tasks/infrastructure/infrastructure.dart';

part 'tasks_providers.g.dart';

@Riverpod(keepAlive: false)
class Tasks extends _$Tasks {
  @override
  Future<List<Task>> build() => ref.watch(getTasksProvider.future);

  void createTask(Task task) {
    final tasksRepository = ref.watch(taskRepositoryProvider);
    tasksRepository.createTask(task);
    ref.invalidateSelf();
  }
}

@Riverpod(keepAlive: true)
class SelectedTask extends _$SelectedTask {
  @override
  Task build() => Task();

  void updateSelectedTask(Task task) {
    state = task;
  }
}

@Riverpod(keepAlive: true)
TasksRepositoryImpl taskRepository(TaskRepositoryRef ref) {
  return TasksRepositoryImpl(dataSource: MockTasksDatasourceImpl());
}

@Riverpod(keepAlive: true)
Future<List<Task>> getTasks(GetTasksRef ref) async {
  final TasksRepository repository = ref.watch(taskRepositoryProvider);
  return await repository.getTasks();
}

@riverpod
Future<void> addTask(AddTaskRef ref, Task task) {
  final TasksRepository repository = ref.watch(taskRepositoryProvider);
  return repository.createTask(task);
}

// @Riverpod(keepAlive: true)
// class AddTask extends _$AddTask {
//   Future<void> createTask(AddTasksRef ref) {
//     final tasksRepository = ref.watch(taskRepositoryProvider);
//     return tasksRepository.createTask();
//   }
// }
