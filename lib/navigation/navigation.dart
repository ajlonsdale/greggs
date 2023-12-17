import 'package:auto_route/auto_route.dart';
import 'package:greggs/basket/_basket.dart';
import 'package:greggs/home/_home.dart';

part 'navigation.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: HomeRoute.page),
        AutoRoute(path: '/basket', page: BasketRoute.page),
      ];
}
