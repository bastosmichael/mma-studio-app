// Routes
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mastersMartialArts/components/menu_scaffold.dart';
import 'package:mastersMartialArts/screens/home/home_controller.dart';
import 'package:mastersMartialArts/screens/splash_screen.dart';
import 'package:mastersMartialArts/screens/youtube_video_screen.dart';

class AppRoutes {
  static const splash = 'splash';
  static const home = 'home';
  static const youtubeVideo = 'youtube-video';

  static const List<String> routes = [home, youtubeVideo];
}

final router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
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
    GoRoute(
      path: '/youtube-video',
      builder: (BuildContext context, GoRouterState state) {
        return const MenuScaffold(
          routeNames: AppRoutes.routes,
          child: YouTubeVideoScreen(),
        );
      },
    ),
  ],
);
