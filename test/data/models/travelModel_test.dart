import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:ruttaplication/data/models/travelModel.dart';
import '../../mocks/fixtures/fixture_reader.dart';

void main() {
  group("fromJson", () {
    test("shoud fatch and return a correct travelModel from json fixture", () {
      final Map<String, dynamic> jsonMap = jsonDecode(fixture('travel.json'));
      final result = TravelModel.fromJson(jsonMap);
      expect(result, isA<TravelModel>());
    });
  });
}
