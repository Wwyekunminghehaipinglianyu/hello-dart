void main(){
  var trigger = true;
  var myObject = ['hgjahg ','gahhaha',55555];
  if(trigger) {
    print('正确的情况，triggrt为true');
  }else{
    print('错误的情况，triggrt为flase');
  }

  for(var ob in myObject){
    print(ob);
  }

  var number = 1;
  while(number < 20){
    print(number++);

  }

}