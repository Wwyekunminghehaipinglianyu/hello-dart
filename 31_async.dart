//包含 dart:async 样式的实用程序类以处理异步计算。
//AsyncCache<T> class
//运行异步函数并将结果缓存一段时间。
//此类的存在是为了涵盖具有潜在昂贵代码（例如文件 I/O、网络访问或隔离计算）的模式，这些代码不太可能快速更改并运行更少的时间


import 'dart:async';

void runUsingFuture(List<String> args) {
  // 调用 findEntryPoint() 函数，返回一个 Future 对象
  findEntryPoint().then((entryPoint) {
    // 在 Future 对象完成后，调用 runExecutable() 函数，返回一个新的 Future 对象
    return runExecutable(entryPoint, args);
  }).then((result) {
    // 在新的 Future 对象完成后，调用 flushThenExit() 函数
    flushThenExit(result);
  });
}

Future<String> findEntryPoint() async {
  // 模拟异步操作
  await Future.delayed(Duration(seconds: 1));
  // 返回一个字符串作为示例结果
  return 'main';
}

Future<String> runExecutable(String entryPoint, List<String> args) async {
  // 模拟异步操作
  await Future.delayed(Duration(seconds: 2));
  // 返回一个字符串作为示例结果
  return 'Executable $entryPoint with args ${args.join(', ')}';
}

void flushThenExit(String result) {
  // 输出结果到控制台
  print(result);
  // 退出程序
}

void main(List<String> args) {
  runUsingFuture(args);
}