
class Seat{
  String ?passagerId;
  int line;
  int coll;
  List<String> _collPosition = ['A','B','C','D','E','F'',G','H',];
  Map<String, dynamic> toJson() => {
    'id': line,
    'coll': coll,
    'passagerId':passagerId
  };

  @override
  String toString() {
    return line.toString()+_collPosition[coll];
  }
  Seat({required this.line, required this.coll,this.passagerId});

}