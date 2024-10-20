void main ()
{
  print('Welcome to Dart!');

  var myC = myClass(); //assign in the variable
  myC.printName(); //function calling
  myC.printNameString("I love u very much"); //function calling
  myC.printNameString("I love Flutter"); //function calling
  print(myC.Add());
  print(myC.Sum(100, 200));
  print(myC.Sum(10, 20));
}

class myClass {

  myClass(){ //Default Constuctor
    print("myClass Object Created!!");
  }

  void printName () { //Declearation
    print('Saha store and khelaghor');// Defination
  }

  void printNameString (String name) { //Declearation
    print(name); //Defination

  }

  int Add(){
    int a,b;
    a=5;
    b=6;
    int sum = a+b;
    return sum;
  }

  int Sum(no1,no2){ //Declearation
    int sum = no1+no2;
    return sum;
  }

}