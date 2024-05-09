// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$taskRepositoryHash() => r'80a9d42a94b14f463ff9559d043322f5e59e243e';

/// See also [taskRepository].
@ProviderFor(taskRepository)
final taskRepositoryProvider = Provider<TasksRepositoryImpl>.internal(
  taskRepository,
  name: r'taskRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$taskRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TaskRepositoryRef = ProviderRef<TasksRepositoryImpl>;
String _$getTasksHash() => r'0ef377156825826dbcec294c4cfca4dbe4921f5e';

/// See also [getTasks].
@ProviderFor(getTasks)
final getTasksProvider = FutureProvider<List<Task>>.internal(
  getTasks,
  name: r'getTasksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getTasksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetTasksRef = FutureProviderRef<List<Task>>;
String _$selectedTaskHash() => r'40f0107bf64e21838b3e2b01fa0cf027b0430bca';

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
