
import 'package:ruttaplication/data/models/driverModel.dart';
import 'package:ruttaplication/data/src/driverDataSource.dart';
import 'package:ruttaplication/domain/entity/Driver.dart';
import 'package:ruttaplication/domain/repository/driverRepository.dart';

class DriverRepositoryImplementation implements DriverRepository {
  DriverDataSource driverDataSource;

  DriverRepositoryImplementation(this.driverDataSource);

  @override
  List<Driver> GetAllDrivers() {
    try {
      return driverDataSource.getAllDrivers();
    } on Exception {
      throw Exception('falhou');
    }
  }

  @override
  register(Driver driver) {
    driverDataSource.driverRegister(DriverModel.toDriverEntity(driver));
}
}
