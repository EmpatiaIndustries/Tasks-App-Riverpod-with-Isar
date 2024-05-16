import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks_app/src/tasks/presentation/presentation.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TasksScreen();
  }
}

@TypedGoRoute<HelperRoute>(path: '/helper')
class HelperRoute extends GoRouteData {
  const HelperRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HelperScreen();
  }
}

@TypedGoRoute<EditProjectRoute>(path: '/create')
class EditProjectRoute extends GoRouteData {
  const EditProjectRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CreateTaskScreen();
  }
}

@TypedGoRoute<EditTaskRoute>(path: '/edit')
class EditTaskRoute extends GoRouteData {
  const EditTaskRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const EditTaskScreen();
  }
}
