import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasks_app/config/config.dart';

void main() {
  runApp(const ProviderScope(child: TasksApp()));
}

class TasksApp extends ConsumerWidget {
  const TasksApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size currentSize = MediaQuery.of(context).size;
    final Color color = ref.watch(selectedColorProvider);
    final GoRouter router = ref.watch(routerProvider);

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(deviceSize: currentSize, colorSeed: color).getTheme(),
      title: 'Tasks App',
      routerConfig: router,
    );
  }
}
