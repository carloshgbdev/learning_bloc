import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc/bloc/form_bloc.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isValid = context.select((FormBloc bloc) => bloc.state.isValid);
    return ElevatedButton(
      onPressed: isValid ? () => context.read<FormBloc>().add(FormSubmitted()) : null,
      child: const Text('Submit'),
    );
  }
}
