void main(List<String> args) {
  //creat a map
  var gifts = {
    'first': 'agag',
    'second': 'mmmm',
    'fifth': 'qqqq',
  };
  var nobleGases = {
    2: 'aqqqqq',
    10: 'hhh',
    18: 'oooo',
  };
  //add elements
  gifts['myadd'] = 'qqbfbfhh';
  nobleGases[89] = 'jgsksksg';
  //Add a new key-value pair to an existing map using the subscript assignment operator ([]=):
  gifts['qqqq'] = 'dddd';
  // Retrieve a value from a map using the subscript operator ([]):
  assert(gifts['first'] == 'agag');
// If you look for a key that isn’t in a map, you get null in return:
  assert(gifts['sixth'] == null);
  //.length
  assert(gifts.length == 5);
  //const
  final constantMap= const{
    2:'gaga',
    45:'sgsg',
    78:'sggsg',
  };
  
}
