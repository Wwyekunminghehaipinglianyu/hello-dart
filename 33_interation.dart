//当我们需要创建一个类，使其可以在 for-in 循环中使用迭代器进行遍历时，
//可以通过继承（如果可能的话）或实现 Iterable 接口来提供迭代器，并通过实现 Iterator 接口来定义实际的迭代操作。
class Process{
  //process
}
class ProcessInterator implements Iterator<Process>{
  @override
  Process get current =>...
  @override
  bool moveNext => ...
}