import 'package:flutter/material.dart';
import 'package:real_estate_app/navigation/routes.dart';
import 'package:real_estate_app/presentation/dashboard/dashboard_screen.dart';

Map<String, WidgetBuilder> routes() {
  return {};
}

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  Widget widget = const SizedBox();
  switch (settings.name) {
    case Routes.dashboard:
      widget = const DashBoardRouteProvider();
      break;
  }
  return MaterialPageRoute(
    builder: (context) => widget,
  );
}
