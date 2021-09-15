

import 'package:flutter_triple/flutter_triple.dart';
import 'package:ruttaplication/data/src/inMemory/cache/driverDataSourceImplementationInCache.dart';
import 'package:ruttaplication/domain/entity/Driver.dart';
import 'package:ruttaplication/domain/usecase/driver/getAllDriversUsecase.dart';

class DriverHomeState extends NotifierStore<Exception,List<Driver>>{
  FetchAllDriversUsecase fetchAllDriversUsecase;
  DriverHomeState(this.fetchAllDriversUsecase) : super([]);

  fetchAllDrivers()async{
   setLoading(true);
   await Future.delayed(Duration(seconds: 1800));
   var result = fetchAllDriversUsecase.getAllDrivers();
   update(result);
   setLoading(false);
  }

}