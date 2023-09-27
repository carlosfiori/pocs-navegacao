import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navegacao/routes/app_router.gr.dart';
import 'package:packages/package_router.dart';
import 'package:pedidos/pedidos_router.dart';

final _rootNavigationKey = GlobalKey<NavigatorState>();

@AutoRouterConfig(modules: [MyPackageModule, PedidosModule])
class AppRouter extends $AppRouter {
  AppRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
          path: '/',
          meta: const {'tag': 'splash screen'},
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: '/home',
          meta: const {'tag': 'home'},
          children: [
            AutoRoute(
              page: Tab1Route.page,
              initial: true,
              path: 'tab1',
              meta: const {'tag': 'tab1', 'showBottomNav': true},
            ),
            ...PedidosModule.routes(_rootNavigationKey),
            ...MyPackageModule.routes,
          ],
        ),
        ...PedidosModule.outsideRoutes(),
      ];
}

final appRouter = AppRouter(navigatorKey: _rootNavigationKey);
