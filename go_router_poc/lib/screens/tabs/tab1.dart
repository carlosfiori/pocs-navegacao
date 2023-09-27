import 'dart:developer';

import 'package:flutter/material.dart';

class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    log(
      'Building Tab1Screen',
      name: 'Tab1',
    );
    return const Center(child: Text('Tab1 '));
  }
}
