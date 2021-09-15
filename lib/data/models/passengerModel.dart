import 'package:ruttaplication/domain/entity/Passenger.dart';

class PassengerModel extends Passenger {
  PassengerModel({
    required String id,
    required String name,
    required List<String> travelsId}) :
        super(
          id: id,
          name: name,
          travelsId: travelsId);

  factory PassengerModel.fromJson(Map<String, dynamic> jsonParser) {
    List<String> travelsFromJson = List<String>.from(jsonParser['travelsId']);
    return PassengerModel(name: jsonParser['name'], travelsId: travelsFromJson, id: jsonParser['id']);
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        'name': name,
        'travelsId': travelsId,
      };
}
