import 'package:isar/isar.dart';

part 'task.g.dart';

@collection
class Task {
  Id id = Isar.autoIncrement;
  String? userID;
  String? content;
  String? title;

  Task({
    this.userID,
    this.content,
    this.title,
  });

  @override
  String toString() => 'Task(isarID: $id, userID: $userID, content: $content)';
}
