





import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ruttaplication/data/models/driverModel.dart';
import 'package:ruttaplication/data/repository/DriverRepository_Implementation.dart';
import 'package:ruttaplication/data/src/driverDataSource.dart';

class DriverDataSouceMock extends Mock implements DriverDataSource{}
void main(){
  late DriverRepositoryImplementation repository;
  late DriverDataSource driverDataSource;
  List<DriverModel> driverModels = [DriverModel(name: 'joão',travelsId: [],id: '123')];
  setUp((){
    driverDataSource = DriverDataSouceMock();
    repository = DriverRepositoryImplementation(driverDataSource);
  });
  test('should return driverModels list when call',(){
    when(()=>driverDataSource.getAllDrivers()).thenReturn(driverModels);
    final result = repository.GetAllDrivers();
    expect(result,driverModels);
    verify(()=>driverDataSource.getAllDrivers()).called(1);
  });
}