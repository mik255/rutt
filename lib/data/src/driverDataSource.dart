
import 'package:ruttaplication/data/models/driverModel.dart';
import 'package:ruttaplication/domain/entity/Driver.dart';

abstract class DriverDataSource{
  List<DriverModel>getAllDrivers();
  driverRegister(DriverModel driverModel);
}