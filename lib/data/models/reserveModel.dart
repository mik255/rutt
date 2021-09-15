import 'package:ruttaplication/domain/entity/reserve.dart';

import 'SeatModel.dart';

class ReserveModel extends Reserve {
  ReserveModel({
    required String travelId,
    required String driverId,
    required SeatModel seatModel}) : super(travelId: travelId,driverId: driverId,seat: seatModel);
  factory ReserveModel.fromJson(Map<String, dynamic> jsonParser) {

    return ReserveModel(
        travelId: jsonParser['travelId'],
        driverId: jsonParser['driverId'],
        seatModel:SeatModel.fromJson(jsonParser['SeatModel']));
  }

  Map<String, dynamic> toJson() => {
    "travelId": travelId,
    'driverId': driverId,
    'SeatModel': seat.toJson(),
  };
}