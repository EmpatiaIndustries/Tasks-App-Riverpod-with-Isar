import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tasks_app/config/config.dart';
import 'package:tasks_app/src/tasks/domain/domain.dart';
import 'package:tasks_app/src/tasks/infrastructure/infrastructure.dart';

part 'tasks_providers.g.dart';

@Riverpod(keepAlive: true)
class Tasks extends _$Tasks {
  @override
  Future<List<Task>> build() => ref.read(getTasksProvider.future);

  void createTask() async {
    final selectedTask = ref.watch(selectedTaskProvider);
    final tasksRepository = await ref.watch(taskRepositoryProvider.future);
    await tasksRepository.createTask(selectedTask);
    ref.invalidateSelf();
    await future;
  }

  void deleteTask() async {
    final selectedTask = ref.watch(selectedTaskProvider);
    final tasksRepository = await ref.watch(taskRepositoryProvider.future);
    await tasksRepository.deleteTask(selectedTask.id);
    ref.invalidateSelf();
    await future;
  }
}

@Riverpod(keepAlive: true)
class SelectedTask extends _$SelectedTask {
  @override
  Task build() => Task(userID: '64');

  void clear() => state = Task(userID: '64');

  bool isReadyToSave() => state.title != null && state.content != null;

  void selectTask(Task task) => state = task;
  void updateTitle(String title) => state.title = title;
  void updateContent(String content) => state.content = content;
}

@Riverpod(keepAlive: true)
Future<TasksRepositoryImpl> taskRepository(TaskRepositoryRef ref) async {
  final isar = await ref.watch(isarProvider.future);
  return TasksRepositoryImpl(dataSource: LocalTasksDataSourceImpl(isar));
}

@Riverpod(keepAlive: false)
Future<List<Task>> getTasks(GetTasksRef ref) async {
  final repository = await ref.watch(taskRepositoryProvider.future);
  return repository.getTasks();
}
