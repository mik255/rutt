import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:ruttaplication/data/models/origemModel.dart';

import '../../mocks/fixtures/fixture_reader.dart';

void main(){

  group("fromJson", (){
    test("shoud fatch and return a correct origemModel from json fixture", (){
      final Map<String,dynamic> jsonMap = jsonDecode(fixture('origem.json'));
      final result = OrigemModel.fromJson(jsonMap);
      expect(result,isA<OrigemModel>());
    });
  });
  group("toJson", (){
    OrigemModel origemModel = OrigemModel(latitude: 0, longetude: 0, address: "address");
    test("shoud  return a JSON containing the proper map", (){
      final result = origemModel.toJson();
      expect(result,{"latitude":0.0,"longetude":0.0,"address":"address"});
    });
  });
}