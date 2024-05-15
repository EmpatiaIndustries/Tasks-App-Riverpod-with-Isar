import 'package:isar/isar.dart';

part 'task.g.dart';

@collection
class Task {
  Id id;
  String? userID;
  String? content;
  String? title;

  Task({
    this.id = Isar.autoIncrement,
    this.userID,
    this.content,
    this.title,
  });

  @override
  String toString() => 'Task(isarID: $id, userID: $userID, content: $content)';
}
