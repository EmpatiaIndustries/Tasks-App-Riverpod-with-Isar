import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasks_app/src/tasks/domain/domain.dart';
import 'package:tasks_app/src/tasks/presentation/presentation.dart';

class TasksScreen extends ConsumerWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskAsyncValue = ref.watch(getTasksProvider);
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          label: const Text("Agregar Tarea"),
          isExtended: true,
          onPressed: () {},
          elevation: 0,
          backgroundColor: Colors.amber,
          heroTag: 'lel',
          icon: const Icon(Icons.add, color: Colors.white),
        ),
        appBar: const CustomAppBar(),
        drawer: const CustomDrawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              const TasksHeader(),
              taskAsyncValue.when(
                data: (tasks) => TasksList(tasks: tasks),
                error: (_, __) => const Center(child: Text('Error')),
                loading: () => const Center(child: CircularProgressIndicator()),
              ),
            ],
          ),
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
    return Expanded(
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final Task task = tasks[index];
          return ListTile(
            title: Text(task.title ?? ''),
            subtitle: Text(task.content ?? ''),
            trailing: Checkbox(
              value: true,
              onChanged: (value) {
                // context.read(tasksProvider.notifier).toggleTask(task);
              },
            ),
          );
        },
      ),
    );
  }
}
