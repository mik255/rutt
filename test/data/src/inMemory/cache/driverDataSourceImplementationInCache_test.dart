import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ruttaplication/data/models/driverModel.dart';
import 'package:ruttaplication/data/src/driverDataSource.dart';
import 'package:ruttaplication/data/src/inMemory/cache/driverDataSourceImplementationInCache.dart';
import 'package:ruttaplication/device/databaseInCache/cacheDataBaseInplementation.dart';

class MockDeviceDataBaseRepository extends Mock implements DriverDataSource{}

void main() {
  late DriverDataSourceImplementationInCache dataSourceImplementationInMemory;
  setUp(() {
    dataSourceImplementationInMemory = DriverDataSourceImplementationInCache(
        CacheDataBaseInplementation<DriverModel>());
  });
  group('shoud retrive a DriverModel list', () {
    DriverModel driverModel = DriverModel(name: '', travelsId: [], id: 'id');
    test('shoud register this driverModel', () {
      dataSourceImplementationInMemory.driverRegister(driverModel);
    });
    test('shoud verify if the current DriverModel is registered', () {
      dataSourceImplementationInMemory.driverRegister(driverModel);
      expect(dataSourceImplementationInMemory.getAllDrivers()[0], driverModel);
    });
    test('return driverModel list', () {
      dataSourceImplementationInMemory.driverRegister(driverModel);
      expect(dataSourceImplementationInMemory.getAllDrivers()[0], driverModel);
      expect(dataSourceImplementationInMemory.getAllDrivers(), isA<List<DriverModel>>());
    });
  });
}
