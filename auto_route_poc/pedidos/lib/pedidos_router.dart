import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/pedidos_router.gm.dart';

GlobalKey<NavigatorState> rootNavigationKey = GlobalKey<NavigatorState>();

@AutoRouterConfig.module()
class PedidosModule extends $PedidosModule {
  static List<AutoRoute> routes(rootNavigationKey) {
    rootNavigationKey = rootNavigationKey;
    return [
      AutoRoute(
        page: PedidosWrapper.page,
        path: 'pedidos',
        children: [
          AutoRoute(
            page: PedidosTabsRoute.page,
            path: '',
            meta: const {'tag': 'PedidosTabs', 'showBottomNav': true},
            children: [
              AutoRoute(
                page: BoletosRoute.page,
                path: 'boletos',
                meta: const {'tag': 'Boletos', 'showBottomNav': true},
              ),
              AutoRoute(
                page: PedidosRoute.page,
                path: 'historico',
                meta: const {'tag': 'Pedidos', 'showBottomNav': true},
              ),
            ],
          ),
        ],
      )
    ];
  }

  static List<AutoRoute> outsideRoutes() {
    return [
      AutoRoute(
        page: DetailRoute.page,
        path: '/home/pedidos/detail/:id',
        meta: const {'tag': 'Detail'},
      ),
    ];
  }
}
