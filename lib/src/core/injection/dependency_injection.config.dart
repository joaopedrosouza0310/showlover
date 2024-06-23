// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i3;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../../features/features.dart' as _i14;
import '../../features/seasons/data/data_sources/episodes_data_source.dart'
    as _i11;
import '../../features/seasons/data/data_sources/seasons_data_sources.dart'
    as _i18;
import '../../features/seasons/data/repositories/episodes_repository.dart'
    as _i15;
import '../../features/seasons/data/repositories/seasons_repository.dart'
    as _i20;
import '../../features/seasons/domain/use_cases/get_episodes.dart' as _i21;
import '../../features/seasons/domain/use_cases/get_seasons.dart' as _i22;
import '../../features/shows/data/data_sources/shows_data_source.dart' as _i12;
import '../../features/shows/data/repositories/shows_respository.dart' as _i17;
import '../../features/shows/domain/use_cases/get_shows.dart' as _i19;
import '../../features/shows/presentation/cubit/shows_cubit.dart' as _i6;
import '../../features/shows/shows.dart' as _i16;
import '../core.dart' as _i10;
import '../http/http_client.dart' as _i7;
import '../storage/shared_preferences_service.dart' as _i13;
import '../utils/logger/default_logger.dart' as _i8;
import '../utils/utils_services.dart' as _i9;
import 'dependency_injection.dart' as _i23;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.Logger>(() => registerModule.logger);
    gh.factory<_i4.Dio>(() => registerModule.dio);
    await gh.factoryAsync<_i5.SharedPreferences>(
      () => registerModule.prefs(),
      preResolve: true,
    );
    gh.singleton<_i6.ShowsCubit>(() => _i6.ShowsCubit());
    gh.factory<_i7.HttpClient>(() => _i7.DioHttpClient(gh<_i4.Dio>()));
    gh.factory<_i8.DefaultLogger>(
        () => _i8.DefaultLogger(logger: gh<_i3.Logger>()));
    gh.factory<_i9.UtilsServices>(
        () => _i9.UtilsServicesImpl(gh<_i10.DefaultLogger>()));
    gh.factory<_i11.EpisodesDataSource>(() => _i11.EpisodesDataSourceImpl(
          gh<_i10.HttpClient>(),
          gh<_i10.DefaultLogger>(),
        ));
    gh.factory<_i12.ShowsDataSource>(() => _i12.ShowsDataSourceImpl(
          gh<_i10.HttpClient>(),
          gh<_i10.DefaultLogger>(),
        ));
    gh.singleton<_i13.SharedPreferencesService>(
        () => _i13.SharedPreferencesServiceImpl(gh<_i5.SharedPreferences>()));
    gh.factory<_i14.EpisodesRepository>(
        () => _i15.EpisodesRepositoryImpl(gh<_i14.EpisodesDataSource>()));
    gh.factory<_i16.ShowsRepository>(
        () => _i17.ShowsRespositoryImpl(gh<_i16.ShowsDataSource>()));
    gh.factory<_i18.SeasonsDataSource>(() => _i18.SeasonsDataSourceImpl(
          gh<_i10.HttpClient>(),
          gh<_i10.DefaultLogger>(),
        ));
    gh.factory<_i19.GetShows>(() => _i19.GetShows(gh<_i16.ShowsRepository>()));
    gh.factory<_i14.SeasonsRepository>(
        () => _i20.SeasonsRepositoryImpl(gh<_i14.SeasonsDataSource>()));
    gh.factory<_i21.GetEpisodes>(
        () => _i21.GetEpisodes(gh<_i14.EpisodesRepository>()));
    gh.factory<_i22.GetSeasons>(
        () => _i22.GetSeasons(gh<_i14.SeasonsRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i23.RegisterModule {}
