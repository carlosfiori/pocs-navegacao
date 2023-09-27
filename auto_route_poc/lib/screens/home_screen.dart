import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navegacao/routes/app_router.gr.dart';
import 'package:packages/package_router.gm.dart';
import 'package:pedidos/pedidos_router.gm.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    log(
      'Building HomeScreen',
      name: 'HomeScreen',
    );
    return AutoTabsScaffold(
      routes: [
        const Tab1Route(),
        const PedidosTabsRoute(),
        PackageTabRoute(count: 1),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        final showBottomNav =
            context.topRouteMatch.meta['showBottomNav'] == true;

        if (!showBottomNav) {
          return const SizedBox();
        }

        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Users',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Posts',
              icon: Icon(Icons.image_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            ),
          ],
        );
      },
    );
  }
}
