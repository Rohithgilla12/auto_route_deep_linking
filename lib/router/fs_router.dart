import 'package:auto_route_deep_linking/main.dart';
import 'package:flutter/widgets.dart';

class FsRouter {
  factory FsRouter() => _instance;

  FsRouter._() {
    router = AppRouter(
      navigatorKey: navigatorKey,
    );
  }

  static final FsRouter _instance = FsRouter._();

  late AppRouter router;
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
