import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuScaffold extends StatelessWidget {
  final Widget child;
  final List<String> routeNames;
  const MenuScaffold({Key? key, required this.child, required this.routeNames})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          // Display AppBar with Row for wider screens
          return Scaffold(
            appBar: AppBar(
              title: const Text("Master's Martial Arts"),
              actions: routeNames
                  .map((route) => TextButton(
                        onPressed: () => context.go('/${route.toLowerCase()}'),
                        child: Text(route.replaceAll('-', ' ')),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ))
                  .toList(),
            ),
            body: child,
          );
        } else {
          // Display AppBar with Drawer for smaller screens
          return Scaffold(
            appBar: AppBar(
              title: const Text("Master's Martial Arts"),
            ),
            drawer: Drawer(
              child: ListView(
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text('Menu'),
                  ),
                  ...routeNames
                      .map((route) => ListTile(
                            title: Text(route.replaceAll('-', ' ')),
                            onTap: () {
                              context.go('/${route.toLowerCase()}');
                              Navigator.of(context).pop();
                            },
                          ))
                      .toList(),
                ],
              ),
            ),
            body: child,
          );
        }
      },
    );
  }
}
