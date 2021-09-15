import 'package:ruttaplication/data/models/driverModel.dart';
import 'package:ruttaplication/data/models/travelModel.dart';
import 'package:ruttaplication/data/src/TravelDataSource.dart';
import 'package:ruttaplication/device/databaseInCache/dataBaseInterface.dart';
import 'package:ruttaplication/domain/entity/Travel.dart';


class TravelDataSourceImplementationInCache implements TravelDataSource{
  late DeviceDataBaseRepository _deviceDataBaseRepository;
  TravelDataSourceImplementationInCache(this._deviceDataBaseRepository);
  @override
  registerTravel(TravelModel travelModel) {
    _deviceDataBaseRepository.insert(travelModel);
  }
  @override
  editTravel(TravelModel travelModel) {
    _deviceDataBaseRepository.update(travelModel);
  }
  @override
  TravelModel getTravel(String id) {
    return _deviceDataBaseRepository.getList().firstWhere((element) => element.id==id);
  }
  @override
  deleteTravel(Travel travel) {
    _deviceDataBaseRepository.delete(travel);
  }
  @override
  List<TravelModel>fetchAllTravels(){
    return _deviceDataBaseRepository.getList().cast();
  }
}