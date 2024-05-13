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
String _$getTasksHash() => r'dd60b1323eb604b973902894dd4e3abe15c42dce';

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
String _$addTaskHash() => r'ee0243e3bca169f4d298917e3b5f39b5a6605cb9';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [addTask].
@ProviderFor(addTask)
const addTaskProvider = AddTaskFamily();

/// See also [addTask].
class AddTaskFamily extends Family<AsyncValue<void>> {
  /// See also [addTask].
  const AddTaskFamily();

  /// See also [addTask].
  AddTaskProvider call(
    Task task,
  ) {
    return AddTaskProvider(
      task,
    );
  }

  @override
  AddTaskProvider getProviderOverride(
    covariant AddTaskProvider provider,
  ) {
    return call(
      provider.task,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'addTaskProvider';
}

/// See also [addTask].
class AddTaskProvider extends AutoDisposeFutureProvider<void> {
  /// See also [addTask].
  AddTaskProvider(
    Task task,
  ) : this._internal(
          (ref) => addTask(
            ref as AddTaskRef,
            task,
          ),
          from: addTaskProvider,
          name: r'addTaskProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addTaskHash,
          dependencies: AddTaskFamily._dependencies,
          allTransitiveDependencies: AddTaskFamily._allTransitiveDependencies,
          task: task,
        );

  AddTaskProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.task,
  }) : super.internal();

  final Task task;

  @override
  Override overrideWith(
    FutureOr<void> Function(AddTaskRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddTaskProvider._internal(
        (ref) => create(ref as AddTaskRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        task: task,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _AddTaskProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddTaskProvider && other.task == task;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, task.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddTaskRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `task` of this provider.
  Task get task;
}

class _AddTaskProviderElement extends AutoDisposeFutureProviderElement<void>
    with AddTaskRef {
  _AddTaskProviderElement(super.provider);

  @override
  Task get task => (origin as AddTaskProvider).task;
}

String _$deleteTaskHash() => r'6517a71fa4cf5b4f4e332f1d3f178ac43c4e8458';

/// See also [deleteTask].
@ProviderFor(deleteTask)
const deleteTaskProvider = DeleteTaskFamily();

/// See also [deleteTask].
class DeleteTaskFamily extends Family<AsyncValue<void>> {
  /// See also [deleteTask].
  const DeleteTaskFamily();

  /// See also [deleteTask].
  DeleteTaskProvider call(
    int taskId,
  ) {
    return DeleteTaskProvider(
      taskId,
    );
  }

  @override
  DeleteTaskProvider getProviderOverride(
    covariant DeleteTaskProvider provider,
  ) {
    return call(
      provider.taskId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteTaskProvider';
}

/// See also [deleteTask].
class DeleteTaskProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteTask].
  DeleteTaskProvider(
    int taskId,
  ) : this._internal(
          (ref) => deleteTask(
            ref as DeleteTaskRef,
            taskId,
          ),
          from: deleteTaskProvider,
          name: r'deleteTaskProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteTaskHash,
          dependencies: DeleteTaskFamily._dependencies,
          allTransitiveDependencies:
              DeleteTaskFamily._allTransitiveDependencies,
          taskId: taskId,
        );

  DeleteTaskProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.taskId,
  }) : super.internal();

  final int taskId;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteTaskRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteTaskProvider._internal(
        (ref) => create(ref as DeleteTaskRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        taskId: taskId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeleteTaskProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteTaskProvider && other.taskId == taskId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteTaskRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `taskId` of this provider.
  int get taskId;
}

class _DeleteTaskProviderElement extends AutoDisposeFutureProviderElement<void>
    with DeleteTaskRef {
  _DeleteTaskProviderElement(super.provider);

  @override
  int get taskId => (origin as DeleteTaskProvider).taskId;
}

String _$tasksHash() => r'428b77d3726ef082697e4e043f9e707e6f8eff8b';

/// See also [Tasks].
@ProviderFor(Tasks)
final tasksProvider =
    AutoDisposeAsyncNotifierProvider<Tasks, List<Task>>.internal(
  Tasks.new,
  name: r'tasksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$tasksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Tasks = AutoDisposeAsyncNotifier<List<Task>>;
String _$selectedTaskHash() => r'8bd0039a5f4c2788eadec4295032c2771d9ac893';

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
