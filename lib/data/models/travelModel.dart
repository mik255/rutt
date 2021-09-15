import 'package:flutter/foundation.dart';
import 'package:ruttaplication/data/models/destinyModel.dart';
import 'package:ruttaplication/data/models/origemModel.dart';
import 'package:ruttaplication/data/models/vanModel.dart';
import 'package:ruttaplication/domain/entity/Travel.dart';
import 'package:ruttaplication/domain/entity/destiny.dart';
import 'package:ruttaplication/domain/entity/origem.dart';
import 'package:ruttaplication/domain/entity/van.dart';

class TravelModel extends Travel {
  TravelModel({
    required String driverId,
    required String id,
    required Origem origem,
    required Destiny destiny,
    required Van van,
  }) : super(driverId: driverId, id: id, origem: origem, destiny: destiny, van: van);

  factory TravelModel.fromJson(Map<String, dynamic> jsonParser) {
    return TravelModel(
        id: jsonParser['id'],
        driverId: jsonParser['driverId'],
        origem: OrigemModel.fromJson(jsonParser['origemModel']),
        destiny: DestinyModel.fromJson(jsonParser['destinyModel']),
        van: VanModel.fromJson(jsonParser['van']));
  }
  static toTravelEntity(Travel travel) {
    return Travel(
        id: travel.id,
        driverId: travel.driverId,
        origem: travel.origem,
        destiny: travel.destiny,
        van:travel.van);
  }
  Map<String, dynamic> toJson() => {
        'driverId': driverId,
        'id': id,
        'origem': origem,
        'destiny': id,
      };


}
