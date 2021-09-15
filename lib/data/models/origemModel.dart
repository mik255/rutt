import 'package:ruttaplication/domain/entity/origem.dart';

class OrigemModel extends Origem {
  OrigemModel({
    required double latitude,
    required double longetude,
    required String address,
  }) : super(longetude: latitude, latitude: latitude, address: address);

  factory OrigemModel.fromJson(Map<String, dynamic> jsonParser) {
    return OrigemModel(
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
