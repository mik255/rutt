import 'package:flutter_modular/flutter_modular.dart';
import 'package:ruttaplication/presenter/controllers/driver/driverHomeState.dart';
import 'package:ruttaplication/presenter/startPage.dart';
import 'data/repository/DriverRepository_Implementation.dart';
import 'data/src/inMemory/cache/driverDataSourceImplementationInCache.dart';
import 'device/databaseInCache/cacheDataBaseInplementation.dart';
import 'device/databaseInCache/dataBaseInterface.dart';
import 'domain/usecase/driver/getAllDriversUsecase.dart';
import 'presenter/driverViews/DriverHomeView.dart';


class AppModule extends Module {

  @override
  final List<Bind> binds = [
    Bind((i)=>DriverHomeState(i())),
    Bind((i)=>FetchAllDriversUsecase(i())),
    Bind((i)=>DriverRepositoryImplementation(i())),
    Bind((i)=>DriverDataSourceImplementationInCache(i())),
    Bind((i)=>CacheDataBaseInplementation()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_,__)=>StartPage()),
    ChildRoute('/driverHomePage', child: (_,__)=>DriverHomeView())
  ];

}