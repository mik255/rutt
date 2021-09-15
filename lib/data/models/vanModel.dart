import 'package:ruttaplication/domain/entity/van.dart';

class VanModel extends Van {
  VanModel({
    required String id,
    required int line,
    required int coll}) : super(id: id,line: line,coll: coll);
  factory VanModel.fromJson(Map<String, dynamic> jsonParser) {
    return VanModel(
        id: jsonParser['id'],
        line: jsonParser['line'],
        coll: jsonParser['coll'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'line': line,
    'coll': coll,
  };
}
