import 'package:tasks_app/src/tasks/domain/domain.dart';

final List<Task> mockTasks = [
  Task(
    userID: "deka",
    title: "Tarea de matematicas",
    content: "hacer tarea",
  ),
  Task(
    userID: "deka",
    title: "Tarea de matematicas",
    content: "hacer tarea",
  ),
  Task(
    userID: "deka",
    title: "Tarea de matematicas",
    content: "hacer tarea",
  ),
  Task(
    userID: "deka",
    title: "Tarea de matematicas",
    content: "hacer tarea",
  ),
  Task(
    userID: "deka",
    title: "Tarea de matematicas",
    content: "hacer tarea",
  ),
];

class MockTasksDatasourceImpl extends TasksDataSource {
  @override
  Future<List<Task>> fetchAllTasks() {
    return Future.delayed(
      const Duration(seconds: 2),
      () => mockTasks,
    );
  }

  @override
  Future<Task> createTask(Task task) {
    return Future.delayed(const Duration(seconds: 2), () {
      mockTasks.add(task);
      return task;
    });
  }
}
