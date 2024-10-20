void main () {
  var a = 500;
  var b = 50;

  /*if (a > 200 && b < 10) { //all true means condition true
    print('Block 1');
  }
  else {
    print('Block 2');
  }*/ // comment symbol

  if (a > 200 || b < 10) { //one true means condition true
    print('Block 1');
  }
  else if (a<50){
    print('Block 2');
  }
  else if (b<40) // this condition is right though this is not implement
    {
      print("Block 3");
    }
}