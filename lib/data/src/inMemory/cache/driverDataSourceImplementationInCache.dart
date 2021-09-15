import 'package:ruttaplication/data/models/driverModel.dart';
import 'package:ruttaplication/data/src/driverDataSource.dart';
import 'package:ruttaplication/device/databaseInCache/cacheDataBaseInplementation.dart';
import 'package:ruttaplication/device/databaseInCache/dataBaseInterface.dart';

class DriverDataSourceImplementationInCache implements DriverDataSource{
  late DeviceDataBaseRepository _deviceDataBaseRepository;
  DriverDataSourceImplementationInCache(this._deviceDataBaseRepository);

  @override
  driverRegister(DriverModel driverModel) {
    _deviceDataBaseRepository.insert(driverModel);
  }

  @override
  List<DriverModel> getAllDrivers() {
    return _deviceDataBaseRepository.getList().cast();
  }


}