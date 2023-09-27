import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.child});

  final Widget child;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    log(
      'Building HomeScreen',
      name: 'HomeScreen',
    );
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activeIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Tab 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Tab 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Tab 3',
          ),
        ],
        onTap: (value) {
          switch (value) {
            case 0:
              context.pushNamed('homeRoute');
              activeIndex = 0;
              break;
            case 1:
              // Caso utilize pushNamed o go_router não renderiza a tela como child, o pai que contem os botões das abas não aparece
              context.goNamed('pedidosRoute');
              activeIndex = 1;
              break;
            case 2:
              context
                  .pushNamed('packageTabRoute', pathParameters: {'count': '0'});
              activeIndex = 2;
              break;
          }
        },
      ),
    );
  }
}
