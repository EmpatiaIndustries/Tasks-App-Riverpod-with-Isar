// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
      $helperRoute,
      $editProjectRoute,
      $editTaskRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $helperRoute => GoRouteData.$route(
      path: '/helper',
      factory: $HelperRouteExtension._fromState,
    );

extension $HelperRouteExtension on HelperRoute {
  static HelperRoute _fromState(GoRouterState state) => const HelperRoute();

  String get location => GoRouteData.$location(
        '/helper',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $editProjectRoute => GoRouteData.$route(
      path: '/create',
      factory: $EditProjectRouteExtension._fromState,
    );

extension $EditProjectRouteExtension on EditProjectRoute {
  static EditProjectRoute _fromState(GoRouterState state) =>
      const EditProjectRoute();

  String get location => GoRouteData.$location(
        '/create',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $editTaskRoute => GoRouteData.$route(
      path: '/edit',
      factory: $EditTaskRouteExtension._fromState,
    );

extension $EditTaskRouteExtension on EditTaskRoute {
  static EditTaskRoute _fromState(GoRouterState state) => const EditTaskRoute();

  String get location => GoRouteData.$location(
        '/edit',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
