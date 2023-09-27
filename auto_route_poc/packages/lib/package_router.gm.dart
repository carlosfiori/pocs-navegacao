// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;
import 'package:packages/package_tab.dart' as _i1;

abstract class $MyPackageModule extends _i2.AutoRouterModule {
  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    PackageTabRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PackageTabRouteArgs>(
          orElse: () => PackageTabRouteArgs(count: pathParams.getInt('count')));
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.PackageTabScreen(
          key: args.key,
          count: args.count,
        ),
      );
    }
  };
}

/// generated route for
/// [_i1.PackageTabScreen]
class PackageTabRoute extends _i2.PageRouteInfo<PackageTabRouteArgs> {
  PackageTabRoute({
    _i3.Key? key,
    required int count,
    List<_i2.PageRouteInfo>? children,
  }) : super(
          PackageTabRoute.name,
          args: PackageTabRouteArgs(
            key: key,
            count: count,
          ),
          rawPathParams: {'count': count},
          initialChildren: children,
        );

  static const String name = 'PackageTabRoute';

  static const _i2.PageInfo<PackageTabRouteArgs> page =
      _i2.PageInfo<PackageTabRouteArgs>(name);
}

class PackageTabRouteArgs {
  const PackageTabRouteArgs({
    this.key,
    required this.count,
  });

  final _i3.Key? key;

  final int count;

  @override
  String toString() {
    return 'PackageTabRouteArgs{key: $key, count: $count}';
  }
}
