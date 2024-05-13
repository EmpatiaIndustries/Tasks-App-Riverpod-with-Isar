import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks_app/src/tasks/presentation/providers/tasks_providers.dart';

class EditProjectScreen extends ConsumerWidget {
  const EditProjectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.go('/');
            },
          ),
        ),
        body: Column(
          children: [
            const Center(
              child: Text('Edit Project'),
            ),
            //floatingactionbutton with delete icon at the right bottom of the screen
            FloatingActionButton(
              onPressed: () {
                ref.read(tasksProvider.notifier).deleteTask();
                context.go('/');
              },
              child: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
