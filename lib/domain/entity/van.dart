



import 'package:ruttaplication/domain/entity/seat.dart';
import 'package:uuid/uuid.dart';

class Van{
  String id;
  late List<List<Seat>> seats;
  int line;
  int coll;
  List<List<Seat>> generate() {
    return seats = List.generate(
        line, (lineIndex) => List.generate(coll, (collIndex) =>
        Seat(line: lineIndex, coll: collIndex)));
  }
  Van({required this.id, required this.line, required this.coll});
}