import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:ruttaplication/data/models/destinyModel.dart';

import '../../mocks/fixtures/fixture_reader.dart';


void main(){

  group("fromJson", (){
    test("shoud fatch and return a correct destinyModel from json fixture", (){
      final Map<String,dynamic> jsonMap = jsonDecode(fixture('destiny.json'));
      final result = DestinyModel.fromJson(jsonMap);
      expect(result,isA<DestinyModel>());
    });
  });
  group("toJson", (){
    DestinyModel destinyModel = DestinyModel(latitude: 0, longetude: 0, address: "address");
    test("shoud  return a JSON containing the proper map", (){
      final result = destinyModel.toJson();
      expect(result,{"latitude":0.0,"longetude":0.0,"address":"address"});
    });
  });
}