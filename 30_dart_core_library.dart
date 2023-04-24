void main() {
//StringBuffer提供了一个构造String的高效方法
  var myString = StringBuffer();
  myString.write('my name is StringBuffer');
  myString.write('hello  the world');
  //String 和 StringBuffer 类实现字符串拆分、连接和其他字符串操作功能。
  bool isPalindrome(String text) => text == text.split(' ').reversed.join();
  //RegExp,正则表达式,dart的正则表达式的规范跟js是一样的
  var numbers = RegExp(r'\d+');

  //Time
  //使用 DateTime 表示时间点，使用 Duration 表示时间跨度。 使用构造函数或通过解析格式正确的字符串来创建 DateTime 对象。
  var now = DateTime.now();
  //var berlinWallFell = DateTime(1898, 5, 6);
  //var moonLanding = DateTime.parse("1966-4-9");
  //通过指定各个时间单位来创建 Duration 对象
  var timeRemaining = const Duration(hours: 56, minutes: 14);
  //除了 DateTime 和 Duration 之外，还包含用于测量经过时间的 Stopwatch 类

  //Uri
  //A Uri object represents a uniform resource identifier, which identifies a resource, for example on the web.Uri
  //uri对象代表一个统一的资源标识符，它标识一个资源，例如在 web 上.
  var dartlang = Uri.parse('http://dartlang.org/');

  //您可以分别使用 int 和 double 的 parse() 方法将字符串转换为整数或双精度数
  assert(int.parse('42') == 42);
  assert(double.parse('0.50') == 0.5);
  // 或者使用 num 的 parse() 方法，它会在可能的情况下创建一个整数，否则创建一个双精度值
  assert(num.parse('42') is int);
  assert(num.parse('0.50') is double);

  //To specify the base of an integer, add a radix parameter，指定奇数
  assert(int.parse('42', radix: 16) == 66);

//string

  //使用 toString() 方法将 int 或 double 转换为字符串。
  //要指定小数点右边的位数，请使用 toStringAsFixed()。
  //要指定字符串中有效数字的数量，请使用 toStringAsPrecision()：
  assert(42.toString() == '42');
  assert(123.456.toString() == '123.456');
  assert(123.456.toStringAsFixed(2) == '123.46'); //保留两位小数
  assert(123.456.toStringAsPrecision(2) == '1.2e+2');
  assert(double.parse('1.2e+2') == 120.0);

  //A string in Dart is an immutable sequence of UTF-16 code units.
  //You can use regular expressions (RegExp objects) to search within strings and to replace parts of strings.
  //您可以找到字符串中的特定位置，以及检查字符串是否以特定模式开头或结尾
  assert('Never odd or even'.contains('odd')); //是否包含
  assert('Never  odd or even'.startsWith('Never')); //是否以什么开头
  assert('Never odd or even'.endsWith('even')); //是否以什么结束
  assert('Never odd or even'.indexOf('odd') == 6); //找位置

  //You can get the individual characters from a string as Strings or ints, respectively.
  //To be precise, you actually get individual UTF-16 code units;
  //high-numbered characters such as the treble clef symbol (‘\u{1D11E}’) are two code units apiece.
//You can also extract a substring or split a string into a list of substrings:
// Grab a substring.
  assert('Never odd or even'.substring(6, 9) == 'odd'); //获得字串
  var parts = 'progressive web apps'.split(' '); //根据字符进行分割
  assert(parts.length == 3);
  assert(parts[0] == 'progressive');
  assert('Never odd or even'[0] == 'N'); //获取UTF-16码 by index
  for (final char in 'hello'.split('')) {
    print(char);
  }
  // Get all the UTF-16 code units in the string.
  var codeUnitList = 'Never odd or even'.codeUnits.toList();
  assert(codeUnitList[0] == 78);
  // Convert to uppercase.
  assert('web apps'.toUpperCase() == 'WEB APPS'); //大写化
// Convert to lowercase.
  assert('WEB APPS'.toLowerCase() == 'web apps'); //小写化
  ///使用 trim() 删除所有前导和尾随空格。要检查字符串是否为空（长度为零），请使用 isEmpty
  assert('    hello'.trim() == 'hello');
  assert(''.isEmpty);
  assert('   '.isNotEmpty);
  //字符串是不可变对象，这意味着您可以创建它们但不能更改它们。
  //如果您仔细查看 String API 参考，您会注意到没有任何方法真正改变 String 的状态。
  //例如，方法 replaceAll() 返回一个新的字符串而不改变原来的字符串
  var greet = 'hello,hame';
  var greet2 = greet.replaceAll(RegExp('name'), 'Bob');
  assert(greet != greet2);
  //要以编程方式生成字符串，您可以使用 StringBuffer。
  //在调用 toString() 之前，StringBuffer 不会生成新的 String 对象。
  //writeAll() 方法有一个可选的第二个参数，它允许您指定一个分隔符——在本例中是一个空格。
  //使用StringBuffer生成String
  var sb = StringBuffer();
  sb
    ..write('Use a StringBuffer for ')
    ..writeAll(['efficient', 'string', 'creation'], ' ')
    ..write('.');
  var full = sb.toString();
  assert(full == 'Use a StringBuffer for efficient string creation.');

//collection

  //list
  //您可以使用文字来创建和初始化列表。或者，使用 List 构造函数之一。
  //List 类还定义了几种用于向列表中添加项目和从列表中删除项目的方法。
  var grains = <String>[];
  assert(grains.isEmpty);
  var fruits = ['apple', 'oranges']; //直接声明
  fruits.add('ggag');
  fruits.addAll(['sf', 'q']);
  //.length
  assert(fruits.length == 5);
  int appleIndex = fruits.indexOf('apple');
  //移除
  fruits.remove(appleIndex);
  assert(fruits.length == 4);
  //清空
  fruits.clear();
  assert(fruits.isEmpty);
  //使用构造器
  var ve = List.filled(66, 'ff');
  assert(ve.every((v) => v == 'ff'));

  var fruits02 = ['apples', 'oranges'];
  assert(fruits02[0] == 'apples');
  assert(fruits02.indexOf('apples') == 0);
  //使用 sort() 方法对列表进行排序。您可以提供比较两个对象的排序函数。
  //此排序函数必须返回 < 0 表示较小，0 表示相同，> 0 表示较大。以下示例使用了 compareTo()，
  //它由 Comparable 定义并由 String 实现。
  var fruits03 = ['bananas', 'apples', 'oranges'];
  // Sort a list.
  fruits03.sort((a, b) => a.compareTo(b));
  assert(fruits[0] == 'apples');
  //列表是参数化类型（泛型），因此您可以指定列表应包含的类型
  var fruits04 = <String>[];
  fruits04.add('apples');
  var fruit05 = fruits[0];
  assert(fruit05 is String);

  //set

  //map

//Uri
//Uri 类提供了对字符串进行编码和解码的函数，以便在 URI（您可能知道它是 URL）中使用。
//这些函数处理 URI 特有的字符，例如 & 和 =。 Uri 类还解析和公开 URI 的组件——主机、端口、方案等。
//要对 URI 中具有特殊含义的字符（例如 /、:、&、#）之外的字符进行编码和解码，请使用 encodeFull() 和 decodeFull() 方法。
//这些方法适用于编码或解码完全限定的 URI，保留完整的特殊 URI 字符。
  var uri = 'https://example.org/api?foo=some message';
  var encoded = Uri.encodeFull(uri);
  assert(encoded ==
      'https://example.org/api?foo=some%20message'); //Notice how only the space between some and message was encoded.
  var decoded = Uri.decodeFull(encoded);
  assert(uri == decoded);
  //要对 URI 中具有特殊含义的所有字符串字符进行编码和解码，
  //包括（但不限于）/、& 和 :，请使用 encodeComponent() 和 decodeComponent() 方法。
  var uri02 = 'https://example.org/api?foo=some message';
  var encoded02 = Uri.encodeComponent(uri02);
  assert(encoded02 == 'https%3A%2F%2Fexample.org%2Fapi%3Ffoo%3Dsome%20message');
  var decoded02 = Uri.decodeComponent(encoded02);
  assert(uri02 == decoded02);
  //Parsing URIs解析Uri
  //如果您有 Uri 对象或 URI 字符串，您可以使用 Uri 字段（例如路径）获取其部分。要从字符串创建 Uri，请使用 parse() 静态方法
  var uri03 = Uri.parse('https://example.org:8080/foo/bar#frag');
  assert(uri03.scheme == 'https');
  assert(uri03.host == 'example.org');
  assert(uri03.path == '/foo/bar');
  assert(uri03.fragment == 'frag');
  assert(uri03.origin == 'https://example.org:8080');
  //构造函数
  var uri04 = Uri(
      scheme: 'https',
      host: 'example.org',
      path: '/foo/bar',
      fragment: 'frag',
      queryParameters: {'lang': 'dart'});
  assert(uri.toString() == 'https://example.org/foo/bar?lang=dart#frag');
  //假设不想要fragment
  var httpUri = Uri.http('example.org', '/foo/bar', {'lang': 'dart'});
  var httpsUri = Uri.https('example.org', '/foo/bar', {'lang': 'dart'});
  assert(httpUri.toString() == 'http://example.org/foo/bar?lang=dart');
  assert(httpsUri.toString() == 'https://example.org/foo/bar?lang=dart');

  // Get the current date and time.
  var now02 = DateTime.now();
  // Create a new DateTime with the local time zone.
  var y2k = DateTime(2000); // January 1, 2000
  // Specify the month and day.
  y2k = DateTime(2000, 1, 2); // January 2, 2000
  y2k = DateTime.utc(200);

  /// 1/1/2000
  // Specify a date and time in ms since the Unix epoch.
  y2k = DateTime.fromMillisecondsSinceEpoch(946684800000, isUtc: true);
  // Parse an ISO 8601 date in the   UTC time zone.
  y2k = DateTime.parse('2000-01-01T00:00:00Z');
  var sameTimeLastYear = now.copyWith(year: now.year - 1, day: now.day + 5);
  //The millisecondsSinceEpoch property of a date returns the number of milliseconds since the “Unix epoch”—January 1, 1970, UTC:
  var y2k02 = DateTime.utc(2000);
  assert(y2k.millisecondsSinceEpoch == 946684800000);

  // 1/1/1970, UTC
  var unixEpoch = DateTime.utc(1970);
  assert(unixEpoch.millisecondsSinceEpoch == 0);

  var y2k03 = DateTime.utc(2000);

  // Add one year.
  var y2001 = y2k03.add(const Duration(days: 366));
  assert(y2001.year == 2001);
  // Subtract 30 days.
  var december2000 = y2001.subtract(const Duration(days: 30));
  assert(december2000.year == 2000);
  assert(december2000.month == 12);
  // Calculate the difference between two dates.
  // Returns a Duration object.
  var duration = y2001.difference(y2k);
  assert(duration.inDays == 366); // y2k was a leap year
}
//Ulity class
//实现 Comparable 接口以指示一个对象可以与另一个对象进行比较，通常用于排序。
// compareTo() 方法返回 < 0 表示较小，0 表示相同，> 0 表示较大

class Line implements Comparable<Line> {
  final int length;
  const Line(this.length);
  @override
  int compareTo(Line other) => length - other.length;
  
  void main() {
    var short = const Line(1);
    var long = const Line(100);
    assert(short.compareTo(long) < 0);
  }
}
