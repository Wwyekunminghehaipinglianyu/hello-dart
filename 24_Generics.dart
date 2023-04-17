//泛型
abstract class Cache<T> {
  T getBYkey(String key);
  void setByKey(String key, T value);
  //Using collection literals
  var names = <String>[]; //list
  var uniquename = <String>{};//set
  var pages = <String,String>{};//map
  
}
