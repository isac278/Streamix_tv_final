
import 'package:flutter/material.dart';
import '../features/home/home_page.dart';
import '../features/live/live_page.dart';
import '../features/movies/movies_page.dart';

class AppRoutes {
  static final routes = {
    '/': (context) => const HomePage(),
    '/live': (context) => const LivePage(),
    '/movies': (context) => const MoviesPage(),
  };
}
