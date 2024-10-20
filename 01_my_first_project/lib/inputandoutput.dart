

import 'dart:io';  // library

void main () {// void means empty function
  print('welcome to the dart programming language!');
  stdout.write ('Enter your name:'); // show the output
  var name = stdin.readLineSync(); //read and store info in the name variable
  stdout.write ('Welcome, $name'); //output show
  print('Welcome to, $name'); //output show

      {
    for(int i=0; i<5; i++)
    {
      print ('hello ${i+1}');
    }
  }
}
