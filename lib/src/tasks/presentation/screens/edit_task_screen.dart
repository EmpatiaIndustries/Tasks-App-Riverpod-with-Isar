import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks_app/config/config.dart';
import 'package:tasks_app/src/tasks/presentation/presentation.dart';

class EditTaskScreen extends StatelessWidget {
  const EditTaskScreen({super.key});

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
                Text('Editar Tarea', style: titleStyle),
                SizedBox(height: 40),
                EditTaskForm(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EditTaskForm extends ConsumerWidget {
  const EditTaskForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        TextFormField(
          initialValue: ref.watch(selectedTaskProvider).title,
          onChanged: ref.read(selectedTaskProvider.notifier).updateTitle,
          textCapitalization: TextCapitalization.sentences,
          decoration: const InputDecoration(
            hintText: 'Título',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          initialValue: ref.watch(selectedTaskProvider).content,
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
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FilledButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(80, 50)),
                ),
                onPressed: () {
                  ref.read(tasksProvider.notifier).createTask();
                  context.pop();
                },
                child: const Text('Guardar'),
              ),
              FilledButton(
                style: ButtonStyle(
                  side: MaterialStateBorderSide.resolveWith(
                    (states) => BorderSide(
                      color: ref.watch(selectedColorProvider),
                      width: 2,
                    ),
                  ),
                  backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Colors.white,
                  ),
                  minimumSize: MaterialStateProperty.all(const Size(80, 50)),
                ),
                onPressed: () {
                  ref.read(tasksProvider.notifier).deleteTask();
                  context.pop();
                },
                child: Text(
                  'Eliminar',
                  style: TextStyle(color: ref.watch(selectedColorProvider)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
