import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:poki/router/route_constant.dart';
import 'package:poki/views/dashboard/dashboard_page.dart';
import 'package:poki/views/splash/splash_page.dart';

class Routers {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashPage());

      case dashboardRoute:
        return PageTransition(
            child: const DashboardPage(), type: PageTransitionType.rightToLeft);

      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}
