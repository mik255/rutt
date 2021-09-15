import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ruttaplication/domain/entity/Travel.dart';
import 'package:ruttaplication/domain/entity/destiny.dart';
import 'package:ruttaplication/domain/entity/origem.dart';
import 'package:ruttaplication/domain/entity/van.dart';
import 'package:ruttaplication/domain/repository/TravelRepository.dart';
import 'package:ruttaplication/domain/usecase/travel/registerTravellUsecase.dart';

class MockTravelRepository extends Mock implements TravelRepository{}

void main(){
  late RegisterTravellUseCase registerTravellUseCase ;
  late TravelRepository travelRepository;

  setUp((){
    travelRepository = MockTravelRepository();
    registerTravellUseCase = RegisterTravellUseCase(travelRepository);
  });
  // create object
  Van van = Van(id: '1', line: 4, coll: 5);
  Origem origem = Origem(latitude: 0, longetude: 0, address: '');
  Destiny destiny = Destiny(latitude: 0, longetude: 0, address: '');
  Travel travel = Travel(id: '1',origem: origem,destiny: destiny,van: van,driverId: '1');

  test('should register same Travel entity', (){
    registerTravellUseCase.registerTravell(travel);
    when( ()=> travelRepository.getTravel('1')).thenReturn(travel);
    verify(() =>  registerTravellUseCase.registerTravell(travel)).called(1);
  });
}