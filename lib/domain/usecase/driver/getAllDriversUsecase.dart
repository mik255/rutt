

import 'package:ruttaplication/domain/entity/Driver.dart';
import 'package:ruttaplication/domain/repository/driverRepository.dart';

class FetchAllDriversUsecase{
  late DriverRepository driverRepository;
  FetchAllDriversUsecase(this.driverRepository);
  List<Driver> getAllDrivers(){
    return driverRepository.GetAllDrivers();
  }
}