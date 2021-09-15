import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ruttaplication/data/models/destinyModel.dart';
import 'package:ruttaplication/data/models/origemModel.dart';
import 'package:ruttaplication/data/models/travelModel.dart';
import 'package:ruttaplication/data/models/vanModel.dart';
import 'package:ruttaplication/domain/repository/TravelRepository.dart';
import 'package:ruttaplication/domain/usecase/travel/fetchAllTravelsUseCase.dart';


class MockTravelRepository extends Mock implements TravelRepository{}

void main(){
  late FetchAllTravelsUsecase fetchAllTravelsUsecase;
  late TravelRepository travelRepository;
  setUp((){
    travelRepository = MockTravelRepository();
    fetchAllTravelsUsecase = FetchAllTravelsUsecase(travelRepository);
  });
  List<TravelModel> travelModels = [
    TravelModel(driverId: "",id: "",
    destiny: DestinyModel(latitude: 0,longetude: 0,address: ""),
    origem: OrigemModel(latitude: 0,longetude: 0,address: ""),
    van: VanModel(id: "",line: 0,coll: 0),
    )];
  test('should fetch all travels entities registered from the repository', (){
    when( ()=> travelRepository.fetchAllTravels()).thenReturn(travelModels);
    final result = fetchAllTravelsUsecase.fetchAllTravels();
    expect(result,travelModels);
    verify(() => fetchAllTravelsUsecase.fetchAllTravels()).called(1);
  });

}