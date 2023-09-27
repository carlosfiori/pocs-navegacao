import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navegacao/routes/megazord_navigator_observer.dart';
import 'package:navegacao/routes/megazord_route.dart';
import 'package:navegacao/routes/navigation_observer_tagger.dart';
import 'package:navegacao/screens/home_screen.dart';
import 'package:navegacao/screens/splash_screen.dart';
import 'package:navegacao/screens/tabs/tab1.dart';
import 'package:packages/package_router.dart';
import 'package:pedidos/pedidos_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

// GoRouter configuration
final appRouter = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  observers: [
    NavigationObserverTagger(),
    MegazordNavigatorObserver(),
  ],
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    MegazordRoute(
      path: '/dash',
      redirect: (context, state) {
        if (state.fullPath == '/dash') {
          return '/dash/home';
        }
        return null;
      },
      routes: [
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) {
            log(
              'Rebuilding HomeScreen',
              name: 'AppRouter',
            );
            return HomeScreen(
              child: child,
            );
          },
          routes: [
            MegazordRoute(
              path: 'home',
              builder: (context, state) => const Tab1Screen(),
              name: 'homeRoute',
              meta: const {
                'tag': 'Home',
              },
            ),
            ...PedidosModule.routes(_rootNavigatorKey),
            ...MyPackageModule.routes,
          ],
        ),
        // ...PedidosModule.outsideRoutes,
      ],
    )
  ],
);
