import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NavigationObserverTagger extends AutoRouteObserver {
  NavigationObserverTagger() : super();

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    super.didChangeTabRoute(route, previousRoute);
    _setTabRoute(route);
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    super.didInitTabRoute(route, previousRoute);
    _setTabRoute(route);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute != null) {
      _setCurrentScreen(previousRoute);
    }
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    _setCurrentScreen(route);
  }

  @override
  // ignore: unnecessary_overrides
  void didRemove(Route route, Route? previousRoute) {
    // No didRemove não é tagueado a rota removida pois não é uma navegação feita pelo usuario, por exemplo quando é chamado .replace(NovaRota())
    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute != null) {
      _setCurrentScreen(newRoute);
    }
  }

  Future<void> _setCurrentScreen(Route route) async {
    final tag = _getTag(route.settings);

    if (tag != null) {
      await _sendScreenToProviders(tag);
    }
  }

  Future<void> _setTabRoute(TabPageRoute route) async {
    final tag = route.routeInfo.meta['tag'];

    if (tag != null) {
      await _sendScreenToProviders(tag);
    }
  }

  String? _getTag(RouteSettings routeSettings) {
    try {
      return (routeSettings as AutoRoutePage).routeData.meta['tag'];
    } catch (e) {
      return null;
    }
  }

  Future<void> _sendScreenToProviders(String screenName) async {
    log(
      'NavigationObserverTagger: $screenName',
      name: 'NavigationObserverTagger',
    );
    return;
  }
}
