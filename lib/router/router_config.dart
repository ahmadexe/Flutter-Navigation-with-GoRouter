import 'package:go_router/go_router.dart';
import 'package:gorouter_navigation/models/auth_data.dart';

import 'package:gorouter_navigation/router/routes_constants.dart';
import 'package:gorouter_navigation/router/routes_path.dart';
import 'package:gorouter_navigation/screens/about_screen.dart';
import 'package:gorouter_navigation/screens/contact_screen.dart';
import 'package:gorouter_navigation/screens/home_screen.dart';
import 'package:gorouter_navigation/screens/profile_screen.dart';

class RouterConfigration {
  final bool isAuthenticated;

  RouterConfigration({
    required this.isAuthenticated,
  });

  GoRouter getRouter() {
    final GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: homeRoute,
          path: homePath,
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          name: aboutRoute,
          path: '$aboutPath/:id',
          builder: (context, state) => AboutScreen(
            id: int.parse(state.pathParameters['id'] ?? '0'),
          ),
        ),
        GoRoute(
          name: profileRoute,
          path: profilePath,
          builder: (context, state) {
            return ProfileScreen(
              user: state.extra as AuthData,
            );
          },
        ),
        GoRoute(
          name: contactRoute,
          path: contactPath,
          builder: (context, state) => const ContactScreen(),
        ),
      ],
      redirect: (context, state) {
        if (state.fullPath == profilePath) {
          if (isAuthenticated) {
            return profilePath;
          } else {
            return homePath;
          }
        }

        return state.fullPath;
      },
    );
    return router;
  }
}
