import 'package:ruttaplication/data/models/travelModel.dart';
import 'package:ruttaplication/data/src/TravelDataSource.dart';
import 'package:ruttaplication/domain/entity/Travel.dart';
import 'package:ruttaplication/domain/repository/TravelRepository.dart';

class TravelRepositoryImplementation implements TravelRepository{
  TravelDataSource travelDataSource;
  TravelRepositoryImplementation(this.travelDataSource);


  @override
  registerTravel(Travel travel) {
    travelDataSource.registerTravel(TravelModel.toTravelEntity(travel));
  }

  @override
  editTravel(Travel travel) {
    travelDataSource.editTravel(TravelModel.toTravelEntity(travel));
  }

  @override
  getTravel(String id) {
   return travelDataSource.getTravel(id);
  }

  @override
  deleteTravel(Travel travel) {
    travelDataSource.deleteTravel(TravelModel.toTravelEntity(travel));
  }

  @override
  fetchAllTravels() {
    return travelDataSource.fetchAllTravels();
  }


}