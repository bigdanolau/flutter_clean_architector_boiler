import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mboston/core/constants/constants.dart';
import 'package:mboston/core/resources/data_state.dart';
import 'package:mboston/features/authentication/data/models/auth_model.dart';
import 'package:mboston/features/authentication/domain/datasources/auth_datasource.dart';

class AuthRemoteDataSource implements AuthDataSource {
  final Dio dio;

  AuthRemoteDataSource({required this.dio});
  @override
  Future<DataState<AuthModel, String?>> login(
      {required String username, required String password}) async {
    final response =
        await dio.post<Map<String, dynamic>>(Constants.baseUrl, data: {
      'username': username,
      'password': password,
    });
    if (response.statusCode == HttpStatus.ok) {
      final authModel = AuthModel.fromJson(response.data!);
      return DataSuccess(authModel);
    } else {
      return const DataFailed('user not founded');
    }
  }
}
