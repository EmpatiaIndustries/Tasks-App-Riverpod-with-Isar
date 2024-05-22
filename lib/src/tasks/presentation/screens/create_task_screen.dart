import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks_app/src/tasks/presentation/presentation.dart';

class CreateTaskScreen extends StatelessWidget {
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const titleStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height - kToolbarHeight * 2,
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Nueva Tarea', style: titleStyle),
                SizedBox(height: 40),
                NewTaskForm(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NewTaskForm extends ConsumerWidget {
  const NewTaskForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        TextFormField(
          onChanged: ref.read(selectedTaskProvider.notifier).updateTitle,
          textCapitalization: TextCapitalization.sentences,
          decoration: const InputDecoration(
            hintText: 'Título',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          onChanged: ref.read(selectedTaskProvider.notifier).updateContent,
          textCapitalization: TextCapitalization.sentences,
          keyboardType: TextInputType.multiline,
          maxLines: 5,
          minLines: 5,
          decoration: const InputDecoration(
            hintText: 'Contenido de la tarea',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 40),
        FilledButton(
          onPressed: () {
            ref.read(tasksProvider.notifier).createTask();
            ref.read(selectedTaskProvider.notifier).clear();
            context.pop();
          },
          child: const Text('Guardar'),
        ),
      ],
    );
  }
}
