



import 'package:ruttaplication/device/databaseInCache/dataBaseInterface.dart';

class CacheDataBaseInplementation<T> implements DeviceDataBaseRepository{
  List<T> list = [];
  @override
  delete(t) {
   list.removeWhere((element) => element == t);
  }

  @override
  insert(t) {
    list.add(t);
  }

  @override
  update(t) {
    int index = list.indexOf(t);
    list[index] = t;
  }

  @override
  List<T> getList() {
    return list;
  }


}