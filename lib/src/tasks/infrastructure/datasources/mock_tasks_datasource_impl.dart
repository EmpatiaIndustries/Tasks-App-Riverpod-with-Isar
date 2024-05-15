import 'package:tasks_app/src/tasks/domain/domain.dart';

final List<Task> mockTasks = [
  Task(
    id: 1,
    userID: "deka",
    title: "Tarea de matematicas",
    content: "hacer tarea",
  ),
  Task(
    id: 2,
    userID: "deka",
    title: "Tarea de matematicas",
    content: "hacer tarea",
  ),
  Task(
    id: 3,
    userID: "deka",
    title: "Tarea de matematicas",
    content: "hacer tarea",
  ),
  Task(
    id: 4,
    userID: "deka",
    title: "Tarea de matematicas",
    content: "hacer tarea",
  ),
  Task(
    id: 5,
    userID: "deka",
    title: "Tarea de matematicas",
    content: "hacer tarea",
  ),
];

class MockTasksDataSourceImpl extends TasksDataSource {
  final durationLoading = const Duration(seconds: 0);

  @override
  Future<void> delete(int id) {
    return Future.delayed(
      durationLoading,
      () => mockTasks.removeWhere((element) => element.id == id),
    );
  }

  @override
  Future<List<Task>> getAll() {
    return Future.delayed(
      durationLoading,
      () => mockTasks,
    );
  }

  @override
  Future<Task?> getByID(int id) {
    return Future.delayed(
      durationLoading,
      () => mockTasks.firstWhere((element) => element.id == id),
    );
  }

  @override
  Future<void> insert(Task task) {
    return Future.delayed(
      durationLoading,
      () => mockTasks.add(task),
    );
  }

  @override
  Future<void> update(Task task) {
    final index = mockTasks.indexWhere((element) => element.id == task.id);
    return Future.delayed(
      durationLoading,
      () => mockTasks[index] = task,
    );
  }
}
