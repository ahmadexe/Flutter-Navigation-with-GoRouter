import 'package:go_router/go_router.dart';
import 'package:gorouter_navigation/router/routes_constants.dart';
import 'package:gorouter_navigation/router/routes_path.dart';
import 'package:gorouter_navigation/screens/about_screen.dart';
import 'package:gorouter_navigation/screens/contact_screen.dart';
import 'package:gorouter_navigation/screens/home_screen.dart';
import 'package:gorouter_navigation/screens/profile_screen.dart';

class RouterConfigration {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: homeRoute,
        path: homePath,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        name: aboutRoute,
        path: aboutPath,
        builder: (context, state) => const AboutScreen(),
      ),
      GoRoute(
        name: profileRoute,
        path: profilePath,
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        name: contactRoute,
        path: contactPath,
        builder: (context, state) => const ContactScreen(),
      ),
    ]
  );
}