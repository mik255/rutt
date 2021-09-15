import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ruttaplication/data/models/travelModel.dart';
import 'package:ruttaplication/data/src/TravelDataSource.dart';
import 'package:ruttaplication/data/src/inMemory/cache/travelDataSourceImplementationInCache.dart';
import 'package:ruttaplication/device/databaseInCache/cacheDataBaseInplementation.dart';
import 'package:ruttaplication/domain/entity/destiny.dart';
import 'package:ruttaplication/domain/entity/origem.dart';
import 'package:ruttaplication/domain/entity/van.dart';

class MockTravelDataBaseRepository extends Mock implements TravelDataSource{}

void main() {
  late TravelDataSourceImplementationInCache dataSourceImplementationInMemory;
  TravelModel travelModel = TravelModel(
      driverId: 'driverId', id: 'id', origem: Origem(latitude: 0,longetude: 0,address: ''
      ''), destiny: Destiny(longetude: 0,latitude: 0,address: ""), van: Van(id: '',line: 0,coll: 0));
  setUp(() {
    dataSourceImplementationInMemory = TravelDataSourceImplementationInCache(
        CacheDataBaseInplementation<TravelModel>());
  });
  group('shoud retrive a TravelModel list', () {

    test('shoud register this TravelModel', () {
      dataSourceImplementationInMemory.registerTravel(travelModel);
    });
    test('shoud verify if the current TravelModel is registered', () {
      dataSourceImplementationInMemory.registerTravel(travelModel);
      expect(dataSourceImplementationInMemory.getTravel('id'), travelModel);
    });
    test('return TravelModel list', () {
      dataSourceImplementationInMemory.registerTravel(travelModel);
      expect(dataSourceImplementationInMemory.getTravel('id'), travelModel);
      expect(dataSourceImplementationInMemory.fetchAllTravels(), isA<List<TravelModel>>());
    });
  });
}
