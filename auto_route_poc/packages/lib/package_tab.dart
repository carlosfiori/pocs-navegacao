import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:packages/package_router.gm.dart';

@RoutePage()
class PackageTabScreen extends StatelessWidget {
  const PackageTabScreen({super.key, @PathParam() required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    log(
      'eitaaa',
      name: 'PackageTab',
    );
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('PackageTabScreen $count'),
          ElevatedButton(
            onPressed: () {
              context.router.navigate(PackageTabRoute(count: count + 1));
            },
            child: const Text('Go to PackageTabScreen'),
          ),
        ],
      ),
    );
  }
}
