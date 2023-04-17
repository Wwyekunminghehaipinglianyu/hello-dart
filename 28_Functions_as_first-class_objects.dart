void printElement(int element) {
  print(element);
}

void main(List<String> args) {
  var list = [1, 2, 3];
  list.forEach(printElement);

//匿名函数并且赋值给变量
  var annoymouseFunc = (String name) {
    print('aggag');
  };
  // 创建一个使用箭头函数语法的匿名函数，并将其赋值给变量
  void Function(String) greet = (name) => print('Hello, $name!');

  // 调用匿名函数
  greet('Alice'); // 输出：Hello, Alice!
}

//将函数赋值给变量
var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';

void Function(String) greetSomeone = greet;
void greet(String name) {
  // 调用函数
  greetSomeone('Alice'); // 输出：Hello, Alice!
  print('Hello, $name!');

  assert(loudify('hello') == '!!! HELLO !!!');
}
