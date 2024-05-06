import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'isar.g.dart';

@Riverpod(keepAlive: true)
Future<Isar?> isar(IsarRef ref) async {
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [],
    directory: dir.path,
  );
  return isar;
}
