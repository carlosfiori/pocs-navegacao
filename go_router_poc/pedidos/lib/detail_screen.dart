import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Tela com detalhe do pedido

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.id}) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe do pedido'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Pedido $id'),
            ElevatedButton(
              onPressed: () {
                context.goNamed('historicoRoute');
              },
              child: const Text('Voltar para a lista de pedidos'),
            ),
          ],
        ),
      ),
    );
  }
}
