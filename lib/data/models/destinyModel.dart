import 'package:ruttaplication/domain/entity/destiny.dart';

class DestinyModel extends Destiny {
  DestinyModel({
    required double latitude,
    required double longetude,
    required String address,
  }) : super(longetude: latitude, latitude: latitude, address: address);

  factory DestinyModel.fromJson(Map<String, dynamic> jsonParser) {
    return DestinyModel(
        latitude: double.parse(jsonParser['latitude'].toString()),
        longetude: double.parse(jsonParser['longetude'].toString()),
        address: jsonParser['address']);
  }

  Map<String, dynamic> toJson() => {
        'latitude': latitude,
        'longetude': longetude,
        'address': address,
      };
}
