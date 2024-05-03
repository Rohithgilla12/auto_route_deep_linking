import 'dart:async';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:auto_route_deep_linking/router/fs_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'main.gr.dart';

Future<void> main() async => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FsRouter appRouter = FsRouter();

  @override
  Widget build(context) => MaterialApp.router(
        title: 'auto_route deep linking',
        theme: ThemeData.dark(),
        routerConfig: appRouter.router.config(
          navigatorObservers: () => [AutoRouteObserver()],
          deepLinkTransformer: (uri) {
            log('Deep link: $uri');

            return SynchronousFuture(uri);
          },
          deepLinkBuilder: (deepLink) {
            log('Deep link builder: ${deepLink.uri.toString()}');

            return deepLink;
          },
        ),
      );
}

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(context) => AutoTabsScaffold(
        lazyLoad: false,
        animationDuration: const Duration(),
        routes: const [Page1EmptyRoute(), Page2EmptyRoute()],
        bottomNavigationBuilder: (_, tabsRouter) => NavigationBar(
          onDestinationSelected: tabsRouter.setActiveIndex,
          selectedIndex: tabsRouter.activeIndex,
          destinations: const [
            NavigationDestination(icon: Text('1'), label: '1'),
            NavigationDestination(icon: Text('2'), label: '2'),
          ],
        ),
      );
}

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends $AppRouter {
  AppRouter({GlobalKey<NavigatorState>? navigatorKey}) : super(navigatorKey: navigatorKey);

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final routes = [
    AutoRoute(
      path: '/',
      page: HomeRoute.page,
      children: [
        AutoRoute(
          path: 'page1',
          page: Page1EmptyRoute.page,
          children: [
            AutoRoute(path: '', page: Page1Route.page),
          ],
        ),
        AutoRoute(
          path: 'page2',
          page: Page2EmptyRoute.page,
          children: [
            AutoRoute(path: '', page: Page2Route.page),
          ],
        ),
        AutoRoute(page: AboutPage.page, path: 'about'),
        AutoRoute(page: Foo.page, path: 'foo'),
      ],
    ),
  ];
}

@RoutePage()
class Page1EmptyView extends AutoRouter {
  const Page1EmptyView({super.key});
}

@RoutePage()
class Page2EmptyView extends AutoRouter {
  const Page2EmptyView({super.key});
}

@RoutePage()
class Page1View extends StatelessWidget {
  const Page1View({super.key});

  @override
  Widget build(context) => const Scaffold(
        body: CustomScrollView(
            physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            slivers: [
              SliverAppBar(title: Text('Page 1')),
              SliverFillRemaining(
                child: Center(child: Text('Page 1')),
              )
            ]),
      );
}

@RoutePage()
class Page2View extends StatelessWidget {
  const Page2View({super.key});

  @override
  Widget build(context) => const Scaffold(
        body: CustomScrollView(
            physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            slivers: [
              SliverAppBar(title: Text('Page 2')),
              SliverFillRemaining(
                child: Center(child: Text('Page 2')),
              )
            ]),
      );
}
