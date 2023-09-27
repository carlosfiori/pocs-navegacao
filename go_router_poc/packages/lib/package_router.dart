import 'package:go_router/go_router.dart';
import 'package:packages/megazord_route.dart';
import 'package:packages/package_tab.dart';

class MyPackageModule {
  static List<RouteBase> get routes => [
        MegazordRoute(
          path: 'tab/:count',
          meta: const {
            'tag': 'PackageTab',
          },
          name: 'packageTabRoute',
          builder: (context, state) {
            return PackageTabScreen(
              count: int.parse(state.pathParameters['count']!),
            );
          },
        ),
      ];
}
