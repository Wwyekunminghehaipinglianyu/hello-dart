//命名参数是可选的，除非它们被明确标记为必需的。在定义函数时，使用 {param1，param2，...} 来指定命名参数。
//如果您没有提供默认值或标记命名参数为必需，则它们的类型必须是可空的，因为它们的默认值将为 null：
void enableFlages({bool? bold, bool? hidden}) {}

//要为命名参数定义除 null 以外的默认值，请使用 = 指定默认值。指定的值必须是编译时常量
void enableFlages02({bool bold = false, bool hidden = false}) {}

//如果您希望命名参数是必需的，要求调用者为该参数提供值，请使用 required: 进行注释：可以为空，使用？
constenableFlages03({bool bold = false, required bool? hidden}) {}
//在调用函数时，您可以使用 paramName: value 的方式指定命名参数。

//将一组函数参数用方括号 [] 括起来将它们标记为可选的位置参数。
//如果您不提供默认值，则它们的类型必须是可空类型，因为它们的默认值将是 null
String say(String from, String msg, [String? device]) {
  var reslut = '$from says $msg';
  if (device != null) {
    reslut = '$reslut with a $device';
  }
  return reslut;
}

void main() {
  enableFlages(bold: true, hidden: false);
  //以下是调用没有可选参数的函数的示例：
  assert(say('Bob', 'HOwafy') == 'Bob says HOwafy');
 // 以下是调用带有第三个参数的函数的示例：
  assert(say('Bob', 'Howdy', 'smoke signal') ==
    'Bob says Howdy with a smoke signal');
}
