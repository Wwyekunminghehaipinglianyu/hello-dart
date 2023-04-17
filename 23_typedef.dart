typedef IntList = List<int>;
//A type alias can have type parameters:
typedef ListMapper<X> = Map<X, List<X>>;
//下面两种方式是 一样的
Map<String, List<String>> m1 = {};
ListMapper<String> m2 = {};
typedef Compare<T> = int Function(T a, T b);

int sort(int a, int b) => a - b;
void main() {
  //重命名
  IntList i1 = [1, 2, 3];
 assert(sort is Compare<int>); // True!
}
