import 'package:mboston/core/resources/data_state.dart';
import 'package:mboston/features/authentication/domain/entities/auth_entity.dart';
import 'package:mboston/features/authentication/domain/repository/auth_repository.dart';

class AuthUseCases {
  final AuthRepository _authRepository;
  AuthUseCases(this._authRepository);

  Future<DataState<AuthEntity, String?>> login(
      {required username, required password}) async {
    return await _authRepository.login(username: username, password: password);
  }
}
