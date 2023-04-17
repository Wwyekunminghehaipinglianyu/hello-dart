void main() {
  var list = [1, 2, 5];
  //var list2 = [0, ...list];
  //assert(list2.length == 4);
  var list2 = [0, ...?list];
  assert(list2.length == 1);
  print('gaggg');
}
