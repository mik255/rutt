



import 'package:ruttaplication/data/models/driverModel.dart';
import 'package:ruttaplication/domain/entity/Driver.dart';

abstract class DriverRepository{
  List<Driver> GetAllDrivers();
  register(Driver driver);

}