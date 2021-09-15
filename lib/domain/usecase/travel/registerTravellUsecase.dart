
import 'package:ruttaplication/domain/entity/Travel.dart';
import 'package:ruttaplication/domain/repository/TravelRepository.dart';

class RegisterTravellUseCase{
  TravelRepository travelRepository;
  RegisterTravellUseCase(this.travelRepository);
  registerTravell(Travel travel){
    travelRepository.registerTravel(travel);
  }
}