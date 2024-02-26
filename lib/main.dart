import 'package:flutter/material.dart';
import 'package:learning_bloc/router/router_setup.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  RouterSetup.setup();

  runApp(const LearningBloc());
}

class LearningBloc extends StatelessWidget {
  const LearningBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Learning Bloc',
      routerDelegate: RouterSetup.router.routerDelegate,
      routeInformationParser: RouterSetup.router.routeInformationParser,
      routeInformationProvider: RouterSetup.router.routeInformationProvider,
    );
  }
}
