import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mastersMartialArts/components/menu_scaffold.dart';
import 'package:mastersMartialArts/screens/home/home_controller.dart';
import 'package:mastersMartialArts/screens/splash_screen.dart';
import 'package:mastersMartialArts/screens/youtube_video_screen.dart';
import 'package:mastersMartialArts/screens/techniques_catalog.dart';
import 'package:mastersMartialArts/screens/membership_screen.dart';

class AppRoutes {
  static const splash = 'splash';
  static const home = 'home';
  static const youtubeVideo = 'youtube-video';
  static const techniquesCatalog = 'techniques-catalog';
  static const membership = 'membership';

  static const List<String> routes = [home, youtubeVideo, techniquesCatalog, membership];
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
          child: YouTubeVideoScreen(
            videoId: 'UR9-AP2yzY0',
            title: 'Sample Video',
            description: 'This is a sample video description.',
          ),
        );
      },
    ),
    GoRoute(
      path: '/techniques-catalog',
      builder: (BuildContext context, GoRouterState state) {
        return MenuScaffold(
          routeNames: AppRoutes.routes,
          child: TechniquesCatalog(),
        );
      },
    ),
    GoRoute(
      path: '/membership',
      builder: (BuildContext context, GoRouterState state) {
        return const MenuScaffold(
          routeNames: AppRoutes.routes,
          child: MembershipScreen(),
        );
      },
    ),
  ],
);
