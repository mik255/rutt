


import 'package:ruttaplication/domain/entity/Driver.dart';
import 'package:ruttaplication/domain/repository/driverRepository.dart';

class RegisterDriverUsecase{
  late DriverRepository driverRepository;
  RegisterDriverUsecase(this.driverRepository);
  register(Driver driver){
    driverRepository.register(driver);
  }
}