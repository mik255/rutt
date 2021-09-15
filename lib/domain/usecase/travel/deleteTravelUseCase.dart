


import 'package:ruttaplication/domain/entity/Travel.dart';
import 'package:ruttaplication/domain/repository/TravelRepository.dart';

class DeleteTravelUsecase{
  TravelRepository travelRepository;
  DeleteTravelUsecase(this.travelRepository);
  deleteTravel(Travel travel){
    travelRepository.deleteTravel(travel);
  }
}