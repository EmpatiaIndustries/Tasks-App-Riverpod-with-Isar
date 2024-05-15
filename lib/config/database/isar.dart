import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tasks_app/src/tasks/domain/domain.dart';

part 'isar.g.dart';

@Riverpod(keepAlive: true)
Future<Isar> isar(IsarRef ref) async {
  final dir = await getApplicationDocumentsDirectory();
  return Isar.open(
    [TaskSchema],
    directory: dir.path,
  );
}
