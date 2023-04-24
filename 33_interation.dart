//当我们需要创建一个类，使其可以在 for-in 循环中使用迭代器进行遍历时，
//可以通过继承（如果可能的话）或实现 Iterable 接口来提供迭代器，并通过实现 Iterator 接口来定义实际的迭代操作。
import 'dart:math';

class Process {
  String name;
  int pid;
  
  Process(this.name, this.pid);
  
  @override
  String toString() => '$name (PID: $pid)';
}

class ProcessIterator implements Iterator<Process> {
  static const _processNames = ['Chrome', 'Safari', 'Firefox', 'Edge', 'Opera'];
  static final _random = Random();
  
  int _count = 0;
  
  @override
  Process get current => Process(_processNames[_random.nextInt(_processNames.length)], _count);
  
  @override
  bool moveNext() {
    _count++;
    return _count <= 10;
  }
}

class Processes extends IterableBase<Process> {
  @override
  final Iterator<Process> iterator = ProcessIterator();
}

void main() {
  for (final process in Processes()) {
    print(process);
  }
}