import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ruttaplication/data/models/driverModel.dart';
import 'package:ruttaplication/domain/repository/driverRepository.dart';
import 'package:ruttaplication/domain/usecase/driver/getAllDriversUsecase.dart';


class MockDriverRepository extends Mock implements DriverRepository{}

void main(){
  late FetchAllDriversUsecase fetchAllDriversUsecase;
  late DriverRepository driverRepository;
  setUp((){
    driverRepository = MockDriverRepository();
    fetchAllDriversUsecase = FetchAllDriversUsecase(driverRepository);
  });

  List<DriverModel> drivers = [DriverModel(name: 'joão',travelsId: [],id:'123')];

  test('should fetch all drivers registered entities from the repository', (){
      when( ()=> driverRepository.GetAllDrivers()).thenReturn(drivers);
      final result = fetchAllDriversUsecase.getAllDrivers();
      expect(result,drivers);
      verify(() => driverRepository.GetAllDrivers()).called(1);
  });

}