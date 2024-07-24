import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mboston/features/authentication/domain/usecases/auth_use_cases.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUseCases _authUseCases;

  AuthBloc(this._authUseCases) : super(AuthInitial()) {
    on<AuthLoadingEvent>((event, emit) {});
  }
}
