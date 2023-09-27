import 'package:auto_route/auto_route.dart';
import 'package:packages/package_router.gm.dart';

@AutoRouterConfig.module()
class MyPackageModule extends $MyPackageModule {
  static List<AutoRoute> get routes => [
        AutoRoute(
          page: PackageTabRoute.page,
          path: 'tab3/:count',
          meta: const {'tag': 'PackageTab', 'showBottomNav': true},
        ),
      ];
}
