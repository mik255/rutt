import 'package:ruttaplication/domain/entity/van.dart';
import 'destiny.dart';
import 'origem.dart';

class Travel {
  String driverId;
  String id;
  Origem origem;
  Destiny destiny;
  Van van;

  Map<String, dynamic> toJson() => {
        'id': id,
      };

  Travel({required this.id, required this.origem, required this.destiny, required this.van,required this.driverId});
}
