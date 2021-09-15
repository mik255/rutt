



abstract class DeviceDataBaseRepository<T> {
  insert(T t){}
  delete(T t){}
  T update(T t);
  List<T> getList();
}