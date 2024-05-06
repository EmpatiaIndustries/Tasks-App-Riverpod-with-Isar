import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasks_app/src/tasks/domain/domain.dart';
import 'package:tasks_app/src/tasks/presentation/presentation.dart';

class TasksScreen extends ConsumerWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        drawer: const CustomDrawer(),
        body: Column(
          children: [
            const TasksHeader(),
            Expanded(
              child: TasksList(tasks: ref.watch(tasksProvider).tasks),
            ),
          ],
        ),
      ),
    );
  }
}

class TasksList extends StatelessWidget {
  final List<Task> tasks;

  const TasksList({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final Task task = tasks[index];
        return ListTile(
          title: const Text('task.title'),
          subtitle: const Text('task.description'),
          trailing: Checkbox(
            value: true,
            onChanged: (value) {
              // context.read(tasksProvider.notifier).toggleTask(task);
            },
          ),
        );
      },
    );
  }
}
