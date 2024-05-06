import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tasks_app/config/router/routes.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  final routerKey = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

  final appRouter = GoRouter(
    navigatorKey: routerKey,
    initialLocation: const HomeRoute().location,
    routes: $appRoutes,
  );

  ref.onDispose(appRouter.dispose);

  return appRouter;
}
