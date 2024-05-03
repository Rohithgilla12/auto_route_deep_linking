import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Foo extends StatelessWidget {
  const Foo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

@RoutePage()
class AuthenticatedRoute extends AutoRouter {
  const AuthenticatedRoute({super.key});
}
