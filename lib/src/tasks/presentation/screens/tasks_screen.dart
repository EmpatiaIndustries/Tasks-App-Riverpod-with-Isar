import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks_app/config/config.dart';
import 'package:tasks_app/src/tasks/domain/domain.dart';
import 'package:tasks_app/src/tasks/presentation/presentation.dart';

class TasksScreen extends ConsumerWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskAsyncValue = ref.watch(tasksProvider);
    return SafeArea(
      child: Scaffold(
        floatingActionButton: const AddTaskButton(),
        appBar: const CustomAppBar(),
        drawer: const CustomDrawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              const TasksHeader(),
              const SizedBox(height: 25),
              taskAsyncValue.when(
                data: (tasks) => TasksList(tasks: tasks),
                error: (err, __) => ErrorPage(message: err),
                loading: () => const LoadingPage(),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}

class TasksList extends ConsumerWidget {
  final List<Task> tasks;

  const TasksList({super.key, required this.tasks});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final Task task = tasks[index];
          return ListTile(
            onTap: () {
              ref.read(selectedTaskProvider.notifier).selectTask(task);
              context.push('/edit');
            },
            title: Text(task.title ?? ''),
            subtitle: Text(task.content ?? ''),
            trailing: const Icon(Icons.arrow_forward_sharp),
          );
        },
      ),
    );
  }
}

class AddTaskButton extends ConsumerWidget {
  const AddTaskButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton.extended(
      label: const Text("Agregar Tarea", style: TextStyle(color: Colors.white)),
      onPressed: () => context.push('/create'),
      elevation: 0,
      backgroundColor: ref.watch(selectedColorProvider),
      heroTag: '#fab-tasks-screen',
      icon: const Icon(Icons.add, color: Colors.white),
    );
  }
}
