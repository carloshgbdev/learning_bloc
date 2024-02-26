import 'package:flutter/material.dart';
import 'package:learning_bloc/pages/home/view/home_page.dart';

void main() {
  runApp(const LearningBloc());
}

class LearningBloc extends StatelessWidget {
  const LearningBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Bloc',
      routes: {
        '/': (context) => const HomePage(),
      },
    );
  }
}
