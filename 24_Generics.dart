//泛型
abstract class Cache<T> {
  T getBYkey(String key);
  void setByKey(String key, T value);
  //Using collection literals
  var names = <String>['Seth', 'Kathy', 'Lars']; //list
  var uniquename = <String>{}; //set
  var pages = <String, String>{}; //map
}

class SomeBaseClass {
  // Using generic methods
  T first<T>(List<T> ts) {
    T tmp = ts[0];
    return tmp;
  }
}

class Extender extends SomeBaseClass {}

//让T exstends 东西
class foo<T extends SomeBaseClass> {
  String toString() => "Instance of '<$T>'";
}

var SomeBaseClassFoo = foo<Extender>();

//创建的时候不写东西，他会使用基类
var Foo = foo(); //Instance of 'foo<SomeBaseClass>'
////以下为错误做法
///var foo = Foo<Object>();
void main() {
  print(Foo);
  var names = <String>[];
  names.addAll(['Seth', 'Kathy', 'Lars']);
  print(names is List<String>); // true
}
