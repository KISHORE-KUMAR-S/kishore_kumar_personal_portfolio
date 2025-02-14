import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utils/enums/enums.dart';
import '../views/home/home_screen.dart';
import 'route_slide_transition.dart';
import 'routes.dart';

final router = GoRouter(
  initialLocation: Routes.home,
  routes: [
    GoRoute(
      path: Routes.home,
      pageBuilder: (context, state) => _buildPageWithDefaultTransition(
        state: state,
        child: HomeScreen(),
      ),
    )
  ],
);

_buildPageWithDefaultTransition({
  required GoRouterState state,
  required Widget child,
}) {
  return RouteSlideTransition(
    position: SlidePosition.left,
    child: child,
  );
}
