


import 'package:ruttaplication/domain/entity/Driver.dart';
import 'package:ruttaplication/domain/entity/Travel.dart';
import 'package:ruttaplication/domain/repository/TravelRepository.dart';
import 'package:ruttaplication/domain/repository/driverRepository.dart';

class FetchAllTravelsUsecase{
  late TravelRepository travelRepository;
  FetchAllTravelsUsecase(this.travelRepository);
  List<Travel> fetchAllTravels(){
    return travelRepository.fetchAllTravels();
  }
}