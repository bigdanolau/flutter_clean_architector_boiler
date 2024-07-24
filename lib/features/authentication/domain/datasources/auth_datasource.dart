import 'package:mboston/core/resources/data_state.dart';
import 'package:mboston/features/authentication/data/models/auth_model.dart';

abstract class AuthDataSource {
  Future<DataState<AuthModel, String?>> login(
      {required String username, required String password});
}
