import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ruttaplication/data/models/driverModel.dart';
import 'package:ruttaplication/domain/repository/driverRepository.dart';
import 'package:ruttaplication/domain/usecase/driver/registerDriverUsecase.dart';


class MockDriverRepository extends Mock implements DriverRepository{}

void main(){
  late RegisterDriverUsecase registerDriverUsecase ;
  late DriverRepository driverRepository;
  setUp((){
    driverRepository = MockDriverRepository();
    registerDriverUsecase = RegisterDriverUsecase(driverRepository);
  });

  DriverModel driver = DriverModel(name: 'joão',travelsId: [],id:'123');

  test('should register same driver entity from the repository', (){
     registerDriverUsecase.register(driver);
     when( ()=> driverRepository.GetAllDrivers()[0]).thenReturn(driver);
     verify(() =>  registerDriverUsecase.register(driver)).called(1);
  });

}