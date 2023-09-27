// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:pedidos/detail_screen.dart' as _i2;
import 'package:pedidos/pedidos_tabs.dart' as _i3;
import 'package:pedidos/pedidos_wrapper.dart' as _i4;
import 'package:pedidos/tabs/boletos_screen.dart' as _i1;

abstract class $PedidosModule extends _i5.AutoRouterModule {
  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    BoletosRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BoletosScreen(),
      );
    },
    DetailRoute.name: (routeData) {
      final args = routeData.argsAs<DetailRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DetailScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    PedidosRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.PedidosScreen(),
      );
    },
    PedidosTabsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PedidosTabsScreen(),
      );
    },
    PedidosWrapper.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.PedidosWrapper(),
      );
    },
  };
}

/// generated route for
/// [_i1.BoletosScreen]
class BoletosRoute extends _i5.PageRouteInfo<void> {
  const BoletosRoute({List<_i5.PageRouteInfo>? children})
      : super(
          BoletosRoute.name,
          initialChildren: children,
        );

  static const String name = 'BoletosRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DetailScreen]
class DetailRoute extends _i5.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    _i6.Key? key,
    required String id,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          DetailRoute.name,
          args: DetailRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static const _i5.PageInfo<DetailRouteArgs> page =
      _i5.PageInfo<DetailRouteArgs>(name);
}

class DetailRouteArgs {
  const DetailRouteArgs({
    this.key,
    required this.id,
  });

  final _i6.Key? key;

  final String id;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i1.PedidosScreen]
class PedidosRoute extends _i5.PageRouteInfo<void> {
  const PedidosRoute({List<_i5.PageRouteInfo>? children})
      : super(
          PedidosRoute.name,
          initialChildren: children,
        );

  static const String name = 'PedidosRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PedidosTabsScreen]
class PedidosTabsRoute extends _i5.PageRouteInfo<void> {
  const PedidosTabsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          PedidosTabsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PedidosTabsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.PedidosWrapper]
class PedidosWrapper extends _i5.PageRouteInfo<void> {
  const PedidosWrapper({List<_i5.PageRouteInfo>? children})
      : super(
          PedidosWrapper.name,
          initialChildren: children,
        );

  static const String name = 'PedidosWrapper';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
