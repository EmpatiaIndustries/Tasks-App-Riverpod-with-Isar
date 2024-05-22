import 'dart:async';

import 'package:isar/isar.dart';
import 'package:tasks_app/src/tasks/domain/domain.dart';

class LocalTasksDataSourceImpl extends TasksDataSource {
  final Isar isar;

  LocalTasksDataSourceImpl(this.isar);

  @override
  Future<List<Task>> getAll() async {
    return await isar.tasks.where().findAll();
  }

  @override
  Future<Task?> getByID(int id) async {
    return await isar.tasks.get(id);
  }

  @override
  Future<void> insert(Task task) async {
    await isar.writeTxn(() async {
      await isar.tasks.put(task);
    });
  }

  @override
  Future<void> update(Task task) async {
    await isar.writeTxn(() async {
      await isar.tasks.put(task);
    });
  }

  @override
  Future<void> delete(int id) async {
    await isar.writeTxn(() async {
      final success = await isar.tasks.delete(id);
      return success;
    });
  }
}
