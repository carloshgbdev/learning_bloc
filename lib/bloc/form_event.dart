part of 'form_bloc.dart';

sealed class FormEvent extends Equatable {
  const FormEvent();

  @override
  List<Object> get props => [];
}

final class EmailChanged extends FormEvent {
  const EmailChanged({required this.email});

  final String email;

  @override
  List<Object> get props => [email];
}

final class EmailUnfocused extends FormEvent {}

final class PasswordChanged extends FormEvent {
  const PasswordChanged({required this.password});

  final String password;

  @override
  List<Object> get props => [password];
}

final class PasswordUnfocused extends FormEvent {}

final class FormSubmitted extends FormEvent {}
