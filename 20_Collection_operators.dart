void main() {
  var promoActive = true;
  //collrction if,第四项可能在也可能不再
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

  //collection for
  var listOfInts = [1, 2, 3];
  var listOfString = ['#0', for (var i in listOfInts) ' #$i'];
  assert(listOfString[1] == 1);
  print('aa');
}
