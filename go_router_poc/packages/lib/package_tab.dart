import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PackageTabScreen extends StatelessWidget {
  const PackageTabScreen({super.key, required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    log(
      'Building PackageTabScreen $count',
      name: 'PackageTab',
    );
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('PackageTabScreen $count'),
          ElevatedButton(
            onPressed: () {
              context.pushNamed(
                'packageTabRoute',
                pathParameters: {'count': (count + 1).toString()},
              );
            },
            child: const Text('Go to PackageTabScreen'),
          ),
        ],
      ),
    );
  }
}
