import 'dart:developer';

import 'package:flutter/material.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    log(
      'Building Tab2Screen',
      name: 'Tab2',
    );
    return const Center(child: Text('Tab2 '));
  }
}
