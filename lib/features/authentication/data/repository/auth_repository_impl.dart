import 'package:mboston/core/resources/data_state.dart';
import 'package:mboston/features/authentication/domain/entities/auth_entity.dart';
import 'package:mboston/features/authentication/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<DataState<AuthEntity, String?>> login(
      {required String username, required String password}) {
    throw UnimplementedError();
  }
}
