import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BoletosScreen extends StatelessWidget {
  const BoletosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Boletos'),
    );
  }
}

class PedidosScreen extends StatelessWidget {
  const PedidosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Pedidos'),
        ElevatedButton(
          onPressed: () {
            context.goNamed('detailRoute', pathParameters: {'id': '1'});
          },
          child: const Text('Ir para detalhe do pedido'),
        )
      ],
    );
  }
}
