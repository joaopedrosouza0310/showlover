import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/features.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: RoutesPath.home.path,
      builder: (BuildContext context, GoRouterState state) {
        return const ShowsPage();
      },
    ),
    GoRoute(
      path: RoutesPath.details.path,
      builder: (BuildContext context, GoRouterState state) {
        final show = state.extra as ShowModel;

        return ShowDetailsPage(show);
      },
    ),
  ],
);

enum RoutesPath {
  home('/'),
  details('/serieDetails'),
  seasons('/seasons');

  final String routePath;

  const RoutesPath(this.routePath);

  static RoutesPath? fromPath(String path) {
    for (var route in RoutesPath.values) {
      if (route.path == path) {
        return route;
      }
    }
    return null;
  }

  String get path => routePath;
}
