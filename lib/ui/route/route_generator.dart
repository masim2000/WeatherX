import 'package:flutter/material.dart';
import 'package:flutter_tutorials/ui/views/home_view/home-screen.dart';

class GeneratedRoute {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Future<dynamic> navigateTo(String routeName, {Object args}) {
    return navigatorKey.currentState.pushNamed(routeName, arguments: args);
  }

  static goBack() {
    return navigatorKey.currentState.pop();
  }

  static Route<dynamic> onGenerate(RouteSettings settings) {
    final arg = settings.arguments;
    switch (settings.name) {
      case HomeScreen.routeName:
        if (arg is String) {
          return MaterialPageRoute(
              builder: (_) => HomeScreen(referrarCode: arg));
        }
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return _onPageNotFound();
    }
  }

  static Route<dynamic> _onPageNotFound() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text('Page Not Found'),
        ),
      ),
    );
  }
}
