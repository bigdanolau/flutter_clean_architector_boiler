part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

final class AuthLoadingEvent extends AuthEvent {}

final class AuthDoneEvent extends AuthEvent {}

final class AuthErrorEvent extends AuthEvent {}
