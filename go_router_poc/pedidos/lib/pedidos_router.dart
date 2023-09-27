import 'dart:developer';

import 'package:go_router/go_router.dart';
import 'package:pedidos/detail_screen.dart';
import 'package:pedidos/megazord_route.dart';
import 'package:pedidos/pedidos_tabs.dart';
import 'package:pedidos/tabs/boletos_screen.dart';

class PedidosModule {
  static List<RouteBase> routes(rootNavigatorKey) => [
        MegazordRoute(
          path: 'pedidos',
          name: 'pedidosRoute',
          meta: const {
            'tag': 'Pedidos',
          },
          redirect: (context, state) {
            log(
              'hereeeee',
              name: 'PedidosRouter',
            );
            if (state.fullPath == '/dash/pedidos') {
              return '/dash/pedidos/boletos';
            }
            return null;
          },
          routes: [
            ShellRoute(
              builder: (context, state, child) {
                return PedidosTabsScreen(child: child);
              },
              routes: [
                MegazordRoute(
                    path: 'boletos',
                    name: 'boletosRoute',
                    builder: (context, state) => const BoletosScreen(),
                    meta: const {
                      'tag': 'Boletos',
                    }),
                MegazordRoute(
                    path: 'historico',
                    name: 'historicoRoute',
                    builder: (context, state) => const PedidosScreen(),
                    meta: const {
                      'tag': 'Histórico',
                    },
                    routes: [
                      MegazordRoute(
                        meta: const {
                          'tag': 'Detalhe',
                        },
                        parentNavigatorKey: rootNavigatorKey,
                        path: 'detalhe/:id',
                        name: 'detailRoute',
                        builder: (context, state) {
                          return DetailScreen(id: state.pathParameters['id']!);
                        },
                      ),
                    ]),
              ],
            ),
          ],
        ),
      ];

  static List<RouteBase> get outsideRoutes => [
        GoRoute(
          path: 'pedidos/historico/detalhe/:id',
          name: 'detailRoute',
          builder: (context, state) {
            return DetailScreen(id: state.pathParameters['id']!);
          },
        ),
      ];
}
