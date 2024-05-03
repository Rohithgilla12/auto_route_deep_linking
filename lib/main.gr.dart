// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:auto_route_deep_linking/main.dart' as _i3;
import 'package:auto_route_deep_linking/pages/about.dart' as _i1;
import 'package:auto_route_deep_linking/pages/foo.dart' as _i2;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AboutPage.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutPage(),
      );
    },
    AuthenticatedRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthenticatedRoute(),
      );
    },
    Foo.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Foo(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeView(),
      );
    },
    Page1EmptyRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Page1EmptyView(),
      );
    },
    Page1Route.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Page1View(),
      );
    },
    Page2EmptyRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Page2EmptyView(),
      );
    },
    Page2Route.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Page2View(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutPage]
class AboutPage extends _i4.PageRouteInfo<void> {
  const AboutPage({List<_i4.PageRouteInfo>? children})
      : super(
          AboutPage.name,
          initialChildren: children,
        );

  static const String name = 'AboutPage';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthenticatedRoute]
class AuthenticatedRoute extends _i4.PageRouteInfo<void> {
  const AuthenticatedRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AuthenticatedRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthenticatedRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Foo]
class Foo extends _i4.PageRouteInfo<void> {
  const Foo({List<_i4.PageRouteInfo>? children})
      : super(
          Foo.name,
          initialChildren: children,
        );

  static const String name = 'Foo';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeView]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Page1EmptyView]
class Page1EmptyRoute extends _i4.PageRouteInfo<void> {
  const Page1EmptyRoute({List<_i4.PageRouteInfo>? children})
      : super(
          Page1EmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'Page1EmptyRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Page1View]
class Page1Route extends _i4.PageRouteInfo<void> {
  const Page1Route({List<_i4.PageRouteInfo>? children})
      : super(
          Page1Route.name,
          initialChildren: children,
        );

  static const String name = 'Page1Route';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Page2EmptyView]
class Page2EmptyRoute extends _i4.PageRouteInfo<void> {
  const Page2EmptyRoute({List<_i4.PageRouteInfo>? children})
      : super(
          Page2EmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'Page2EmptyRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Page2View]
class Page2Route extends _i4.PageRouteInfo<void> {
  const Page2Route({List<_i4.PageRouteInfo>? children})
      : super(
          Page2Route.name,
          initialChildren: children,
        );

  static const String name = 'Page2Route';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
