





import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ruttaplication/data/models/travelModel.dart';
import 'package:ruttaplication/data/repository/TravelRepository_Implementation.dart';
import 'package:ruttaplication/data/src/TravelDataSource.dart';
import 'package:ruttaplication/domain/entity/destiny.dart';
import 'package:ruttaplication/domain/entity/origem.dart';
import 'package:ruttaplication/domain/entity/van.dart';


class TravelDataSouceMock extends Mock implements TravelDataSource{}
void main(){
  late TravelRepositoryImplementation repository;
  late TravelDataSource travelDataSource;
  TravelModel travelModel = TravelModel(
      driverId: 'driverId', id: 'id', origem: Origem(latitude: 0,longetude: 0,address: ''
      ''), destiny: Destiny(longetude: 0,latitude: 0,address: ""), van: Van(id: '',line: 0,coll: 0));
  setUp((){
    travelDataSource = TravelDataSouceMock();
    repository = TravelRepositoryImplementation(travelDataSource);
  });
  test('should return travelModels list when call',(){
    when(()=>travelDataSource.getTravel('id')).thenReturn(travelModel);
    final result = repository.getTravel('id');
    expect(result,travelModel);
    verify(()=>travelDataSource.getTravel('id')).called(1);
  });
}