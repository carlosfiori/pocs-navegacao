import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MegazordNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route? previousRoute) {
    var fullPath = '';
    try {
      final settings = route.settings as AutoRoutePage;
      fullPath = getRouteFullPath(settings.routeData);
    } catch (e) {
      fullPath = route.settings.name ?? 'unknown';
    }

    if (fullPath.isNotEmpty) {
      log(
        'MicroApp.di!.loadPagePath($fullPath)',
        name: 'MegazordNavigatorObserver',
      );
    }
  }

  static String getRouteFullPath(RouteData routeData) {
    var paths = <String>[];
    if (routeData.parent != null) {
      paths.add(getRouteFullPath(routeData.parent!));
    }

    paths.add(routeData.match);

    return paths.where((element) => element.isNotEmpty).join('/');
  }
}
