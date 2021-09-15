import 'package:ruttaplication/domain/entity/Driver.dart';


class DriverModel extends Driver {
  DriverModel({
    required String name,
    required List<String> travelsId,
    required String id}) :
    super(name: name, travelsId: travelsId, id: id);

  factory DriverModel.fromJson(Map<String, dynamic> jsonParser) {
    List<String> travelsFromJson = List<String>.from(jsonParser['travelsId']);
    return DriverModel(name: jsonParser['name'], travelsId: travelsFromJson, id: jsonParser['id']);
  }

  static toDriverEntity(Driver driver) {
    return Driver(name: driver.name, travelsId: driver.travelsId, id: driver.id);
  }

  Map<String, dynamic> toJson() => {
        "id":id,
        'name': name,
        'travelsId': travelsId,
      };
}
