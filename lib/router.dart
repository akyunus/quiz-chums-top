import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// handle all app routes
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => Scaffold(
        appBar: AppBar(title: const Text('Home Screen')),
      ),
      routes: [
        GoRoute(
          path: 'new',
          builder: (_, __) => Scaffold(
            appBar: AppBar(title: const Text('Create a new Quiz')),
          ),
        ),
        GoRoute(
            path: 'take/:id',
            builder: (c, s) {
              final id = s.pathParameters['id']!;
              return Scaffold(
                appBar: AppBar(title: Text('Taking the quiz $id')),
              );
            }),
        GoRoute(
          path: 'me',
          builder: (_, __) => Scaffold(
            appBar: AppBar(title: const Text('My Profile')),
          ),
        ),
      ],
    ),
  ],
);
