// Routes
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mastersMartialArts/components/menu_scaffold.dart';
import 'package:mastersMartialArts/screens/home/home_controller.dart';
import 'package:mastersMartialArts/screens/splash_screen.dart'; // Import the splash screen

class AppRoutes {
  static const splash = 'splash';
  static const home = 'home';

  static const List<String> routes = [home];
}

final router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen(); // Splash screen as the initial route
      },
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return const MenuScaffold(
          routeNames: AppRoutes.routes,
          child: HomeController(),
        );
      },
    ),
  ],
);
