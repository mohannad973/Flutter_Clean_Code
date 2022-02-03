import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:willow_care/src/features/profile/data/data_source/remote/profile_data_source.dart';
import 'package:willow_care/src/features/profile/data/repository/profile_repository_impl.dart';
import 'package:willow_care/src/features/profile/domain/repository/profile_repository.dart';
import 'package:willow_care/src/features/profile/domain/usecases/get_profile.dart';
import 'package:willow_care/src/features/profile/presentation/logic/profile_cubit.dart';
import 'package:willow_care/src/features/schedule/data/datasources/remote/accepted_schedule_data_source.dart';
import 'package:willow_care/src/features/schedule/domain/repositories/accepted_schedule_repository.dart';
import 'package:willow_care/src/features/schedule/domain/usecases/get_accepted_data.dart';


import 'app/logic/app_bloc.dart';
import 'app/logic/app_settings.dart';
import 'app/routes/router.gr.dart';
import 'core/utils/managers/database/database_manager.dart';
import 'core/utils/managers/http/domain_lookup.dart';
import 'core/utils/managers/http/http_manager.dart';

import 'features/schedule/data/repositories/accepted_schedule_repository_impl.dart';
import 'features/schedule/presentation/logic/schedule_cubit.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  initInjections(serviceLocator);
  serviceLocator.allowReassignment = true;
}

void initInjections(GetIt serviceLocator) {
  //! Utls
  serviceLocator.registerLazySingleton<DomainLookup>(
    () => DomainLookupImpl(),
  );


  serviceLocator.registerLazySingleton<AppSettings>(
    () => AppSettings(databaseManager: serviceLocator()),
  );


  //! App

  //* Logic
  serviceLocator.registerLazySingleton<AppBloc>(
    () => AppBloc(domainLookup: serviceLocator()),
  );

  //* Router
  serviceLocator.registerLazySingleton<AppRouter>(
    () => AppRouter(),
  );

  //! core

  //* Database
  serviceLocator.registerLazySingleton<DatabaseManager>(
    () => DatabaseManagerImpl(),
  );


  //* Network
  serviceLocator.registerLazySingleton<BaseOptions>(
    () => BaseOptions(
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        "charset": "utf-8",
        "Accept-Charset": "utf-8",
      },
      responseType: ResponseType.plain,
    ),
  );

  serviceLocator.registerLazySingleton<HttpManager>(
    () => HttpManagerImpl(
      baseOptions: serviceLocator(),
      databaseManager: serviceLocator(),

    ),
  );



  //! Feature: schedule Screen

  //* data sources

  serviceLocator.registerFactory<AcceptedScheduleDataSource>(
    () => AcceptedScheduleDataSourceImpl(
      httpManager: serviceLocator(),
    ),
  );

  //* repositories

  serviceLocator.registerFactory<AcceptedScheduleRepository>(
    () => AcceptedScheduleRepositoryImpl(
      acceptedScheduleDataSource: serviceLocator(),
    ),
  );

  //* use cases

  serviceLocator.registerFactory<GetAcceptedData>(
    () => GetAcceptedData(
      repository: serviceLocator(),
    ),
  );

  //* bloc/cubit

  serviceLocator.registerFactory<ScheduleCubit>(
    () => ScheduleCubit(
      appCubit: serviceLocator(),
      getAcceptedData: serviceLocator(),
    ),
  );

  //! Feature: Profile Screen

  //* data sources

  serviceLocator.registerFactory<ProfileDataSource>(
    () => ProfileDataSourceImpl(
      httpManager: serviceLocator(),
    ),
  );

  //* repositories

  serviceLocator.registerFactory<ProfileRepository>(
    () => ProfileRepositoryImpl(profileDataSource: serviceLocator()),
  );

  //* use cases

  serviceLocator.registerFactory<GetProfile>(
    () => GetProfile(
      repository: serviceLocator(),
    ),
  );

  //* bloc/cubit

  serviceLocator.registerFactory<ProfileCubit>(
    () => ProfileCubit(
      appCubit: serviceLocator(),
      getProfile: serviceLocator(),
    ),
  );
}
