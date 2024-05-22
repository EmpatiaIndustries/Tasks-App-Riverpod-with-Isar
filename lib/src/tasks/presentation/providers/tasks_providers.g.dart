// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$taskRepositoryHash() => r'87e6699300019ce9eddc7f4eae5cd8aba11a1f64';

/// See also [taskRepository].
@ProviderFor(taskRepository)
final taskRepositoryProvider = FutureProvider<TasksRepositoryImpl>.internal(
  taskRepository,
  name: r'taskRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$taskRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TaskRepositoryRef = FutureProviderRef<TasksRepositoryImpl>;
String _$getTasksHash() => r'8e9cc2fc0d160b5a6930f493e2b6fb0310eaa531';

/// See also [getTasks].
@ProviderFor(getTasks)
final getTasksProvider = AutoDisposeFutureProvider<List<Task>>.internal(
  getTasks,
  name: r'getTasksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getTasksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetTasksRef = AutoDisposeFutureProviderRef<List<Task>>;
String _$tasksHash() => r'a04dc75327bc98e599e5a5556fc8f4198ae6f2b7';

/// See also [Tasks].
@ProviderFor(Tasks)
final tasksProvider = AsyncNotifierProvider<Tasks, List<Task>>.internal(
  Tasks.new,
  name: r'tasksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$tasksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Tasks = AsyncNotifier<List<Task>>;
String _$selectedTaskHash() => r'93deff49000e149f1ad41824914189d8c5a194d7';

/// See also [SelectedTask].
@ProviderFor(SelectedTask)
final selectedTaskProvider = NotifierProvider<SelectedTask, Task>.internal(
  SelectedTask.new,
  name: r'selectedTaskProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$selectedTaskHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedTask = Notifier<Task>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
