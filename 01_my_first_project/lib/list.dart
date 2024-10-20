

main(){
  var ListNames = [10, 20, 30, 40];
  ListNames.add(50);
  //ListNames.add(60);
  print("$ListNames");

  //var names = []; //Current list
  //names.add ('Tonoy');
  //names.add ('Kumar');
  //names.add ('Saha');

  //ListNames.replaceRange(0, 4, [1,2,3,4]);// replace a list in index position
  //ListNames.removeLast(); //last element remove
  //ListNames.remove(20); //remove 20 to the list
  //ListNames.removeRange(0, 4);//remove to 0 to 4 index elements
  //print ("$ListNames");
  //Names.addAll(ListNames); //current list + previous list

  //names[2] = "Shaha"; // update
  //names.insert(2, 100); //insert in 2nd index
  //names.insertAll(3, ListNames);
  //print("$names");

  print("Length : ${ListNames.length}");
  print("Reversed : ${ListNames.reversed}");
  print("First : ${ListNames.first}");
  print("Last : ${ListNames.last}");
  print("Is Empty : ${ListNames.isEmpty}");
  print("Is not Empty : ${ListNames.isNotEmpty}");
  print("2nd index number : ${ListNames.elementAt(2)}");
  


 }