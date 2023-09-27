import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PedidosTabsScreen extends StatelessWidget {
  const PedidosTabsScreen({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedidos'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  context.pushNamed('boletosRoute');
                },
                child: const Text('Boletos'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.pushNamed('historicoRoute');
                },
                child: const Text('Pedidos'),
              ),
            ],
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
