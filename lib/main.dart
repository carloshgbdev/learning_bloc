import 'package:flutter/material.dart';

void main() {
  runApp(const LearningBloc());
}

class LearningBloc extends StatelessWidget {
  const LearningBloc({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Bloc',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        body: const Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}
