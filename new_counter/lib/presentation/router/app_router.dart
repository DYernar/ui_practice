import 'package:flutter/material.dart';
import 'package:new_counter/presentation/screens/counter_screen/counter_screen.dart';

class AppRouter {
  static const String counter = "counter";

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case counter:
        return MaterialPageRoute(
          builder: (_) => CounterScreen(),
        );
      default:
        throw ("route not found!");
    }
  }
}
