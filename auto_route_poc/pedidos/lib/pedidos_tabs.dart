import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/pedidos_router.gm.dart';

@RoutePage()
class PedidosTabsScreen extends StatelessWidget {
  const PedidosTabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log(
      'Building PedidosTabsScreen',
      name: 'PedidosTabs',
    );
    return AutoTabsRouter.tabBar(
      routes: const [
        BoletosRoute(),
        PedidosRoute(),
      ],
      builder: (context, child, controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(context.topRoute.name),
            leading: const AutoLeadingButton(),
            bottom: TabBar(
              controller: controller,
              tabs: const [
                Tab(text: 'Boletos'),
                Tab(text: 'Pedidos'),
              ],
            ),
          ),
          body: child,
        );
      },
    );
  }
}
