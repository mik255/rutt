import 'package:ruttaplication/domain/entity/seat.dart';

class SeatModel extends Seat {
  SeatModel({required String passagerId, required int line, required int coll}) : super(passagerId: passagerId, line: line, coll: coll);
  factory SeatModel.fromJson(Map<String, dynamic> jsonParser) {

    return SeatModel(
        passagerId: jsonParser['passagerId'],
        line: jsonParser['line'],
        coll:jsonParser['coll']);
  }

  Map<String, dynamic> toJson() => {
    "passagerId": passagerId,
    'line': line,
    'coll': coll,
  };

}
