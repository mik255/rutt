



import 'package:ruttaplication/data/models/travelModel.dart';

abstract class TravelDataSource{
  registerTravel(TravelModel travelModel);
  editTravel(TravelModel travelModel);
  TravelModel getTravel(String id);
  deleteTravel(TravelModel travelModel);
  List<TravelModel>fetchAllTravels();
}