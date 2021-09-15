



import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:ruttaplication/data/models/driverModel.dart';
import '../../mocks/fixtures/fixture_reader.dart';

void main(){
  
  group("fromJson", (){
    test("shoud fatch and return a correct driverModel from json fixture", (){
      final Map<String,dynamic> jsonMap = jsonDecode(fixture('driver.json'));
      final result = DriverModel.fromJson(jsonMap);
      expect(result,isA<DriverModel>());
    });
  });

  group("toJson", (){
    DriverModel driverModel = DriverModel(name: 'same', travelsId: ["1"], id: "1");
    test("shoud  return a JSON containing the proper map", (){

      final result = driverModel.toJson();
      expect(result,{"name":"same","travelsId":["1"],"id":"1"});
    });
  });
  
}