import 'package:isar/isar.dart';

part 'task.g.dart';

@collection
class Task {
  Id id = Isar.autoIncrement;
  String? userID;
  String? token;

  Task({
    this.id = 1,
    this.userID,
    this.token,
  });

  @override
  String toString() => 'Task(isarID: $id, userID: $userID, token: $token)';
}
