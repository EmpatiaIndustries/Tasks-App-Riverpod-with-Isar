import 'package:tasks_app/src/tasks/infrastructure/infrastructure.dart';
import 'package:tasks_app/src/tasks/domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tasks_provider.g.dart';

@Riverpod(keepAlive: true)
class Tasks extends _$Tasks {
  @override
  TaskState build() => TaskState();

  final TasksRepository _taskRepository = TaskRepositoryImpl();

  Future<void> getTasks() async {
    state = state.copyWith(status: TaskStatus.checking);
    // final tasks = await _taskRepository.getTasks(ref);
    state = state.copyWith();
  }
}

enum TaskStatus { checking, taskenticated, notTaskenticated }

class TaskState {
  final List<Task> tasks;
  final TaskStatus status;
  final String errorMessage;

  TaskState({
    this.tasks = const [],
    this.status = TaskStatus.checking,
    this.errorMessage = '',
  });

  TaskState copyWith({
    List<Task>? tasks,
    TaskStatus? status,
    String? errorMessage,
  }) {
    return TaskState(
      tasks: tasks ?? this.tasks,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
