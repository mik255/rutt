


import 'package:ruttaplication/domain/entity/Travel.dart';
import 'package:ruttaplication/domain/repository/TravelRepository.dart';

class EditTravelUsecase{
  TravelRepository travelRepository;
  EditTravelUsecase(this.travelRepository);
  editTravel(Travel travel){
    travelRepository.editTravel(travel);
  }
}