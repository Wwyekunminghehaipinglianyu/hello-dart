void main(List<String> args) {
  var halogens = {'gfggg', 'gga', 'qww', 'rooyory'};
  var names = <String>{};
  //Set<String> names ={};//This wroks,too
  //var names = {}//Creats a map ,not a set
  //add()  and addAll()
  var elements = <String>{};
  elements.add('fafafff');
  elements.addAll(halogens);
  //.length
  assert(elements.length == 5);
  //const set
  final constantSet = const {
  'fluorine',
  'chlorine',
  'bromine',
  'iodine',
  'astatine',
};
// constantSet.add('helium'); // This line will cause an erro
}
