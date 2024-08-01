import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeController extends StatelessWidget {
  const HomeController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('View MMA Techniques'),
              onPressed: () => context.go('/techniques-catalog'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Watch Sample Video'),
              onPressed: () => context.go('/youtube-video'),
            ),
          ],
        ),
      ),
    );
  }
}
