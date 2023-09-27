import 'dart:developer';

import 'package:flutter/material.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    log(
      'Building Tab3Screen',
      name: 'Tab3',
    );
    return const Center(child: Text('Tab3 '));
  }
}
