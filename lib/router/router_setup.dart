import 'package:go_router/go_router.dart';
import 'package:learning_bloc/pages/details/view/details_page.dart';
import 'package:learning_bloc/pages/home/view/home_page.dart';

class RouterSetup {
  static late GoRouter _router;

  static void setup() {
    _router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/details',
          builder: (context, state) {
            final id = state.uri.queryParameters['id'];

            return DetailsPage(id: id);
          },
        ),
      ],
    );
  }

  static GoRouter get router => _router;
}
