import 'package:flutter/material.dart';
import 'package:mastersMartialArts/config/router.dart';
import 'package:mastersMartialArts/theme/color_themes.dart';
import 'package:mastersMartialArts/theme/text_themes.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() => runApp(const MastersMartialArtsApp());

/// The main app.
class MastersMartialArtsApp extends StatelessWidget {
  /// Constructs a [MastersMartialArtsApp]
  const MastersMartialArtsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Master's Martial Arts",
      routerConfig: router,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightColorScheme,
          textTheme: textTheme),
      darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: darkColorScheme,
          textTheme: textTheme),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
    );
  }
}
