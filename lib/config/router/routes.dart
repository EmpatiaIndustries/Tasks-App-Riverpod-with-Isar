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

@TypedGoRoute<SplashRoute>(path: '/splash')
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashScreen();
  }
}

@TypedGoRoute<EditProjectRoute>(path: '/edit')
class EditProjectRoute extends GoRouteData {
  const EditProjectRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const EditProjectScreen();
  }
}
