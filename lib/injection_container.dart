import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mboston/features/authentication/data/data_sources/remote/auth_remote_datasource_impl.dart';
import 'package:mboston/features/authentication/data/repository/auth_repository_impl.dart';
import 'package:mboston/features/authentication/domain/datasources/auth_datasource.dart';
import 'package:mboston/features/authentication/domain/repository/auth_repository.dart';
import 'package:mboston/features/authentication/domain/usecases/auth_use_cases.dart';
import 'package:mboston/features/authentication/presentation/bloc/auth_bloc.dart';

final getIt = GetIt.instance;

Future<void> initializeDependecies() async {
  getIt.registerSingleton<Dio>(
    Dio(),
  );
  getIt.registerSingleton<AuthDataSource>(
    AuthRemoteDataSource(
      dio: getIt(),
    ),
  );
  getIt.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(),
  );
  getIt.registerSingleton<AuthUseCases>(
    AuthUseCases(
      getIt(),
    ),
  );
  getIt.registerSingleton<AuthBloc>(
    AuthBloc(
      getIt(),
    ),
  );
}
