import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/pedidos_router.gm.dart';

@RoutePage()
class BoletosScreen extends StatelessWidget {
  const BoletosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log(
      'Building BoletosScreen',
      name: 'BoletosScreen',
    );
    return const Center(
      child: Text('Boletos'),
    );
  }
}

@RoutePage()
class PedidosScreen extends StatelessWidget {
  const PedidosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log(
      'Building PedidosScreen',
      name: 'BoletosScreen',
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Pedidos'),
        ElevatedButton(
          onPressed: () {
            context.router.push(DetailRoute(id: '1'));
          },
          child: const Text('Detalhe do pedido 1'),
        ),
      ],
    );
  }
}
