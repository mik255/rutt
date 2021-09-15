


import 'package:ruttaplication/domain/entity/Travel.dart';

abstract class TravelRepository{
  registerTravel(Travel travel){}
  editTravel(Travel travel);
  Travel getTravel(String id);
  deleteTravel(Travel travel);
  List<Travel> fetchAllTravels();
}