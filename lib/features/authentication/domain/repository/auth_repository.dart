import 'package:mboston/core/resources/data_state.dart';
import 'package:mboston/features/authentication/domain/entities/auth_entity.dart';

abstract class AuthRepository {
  Future<DataState<AuthEntity, String?>> login(
      {required String username, required String password});
}
