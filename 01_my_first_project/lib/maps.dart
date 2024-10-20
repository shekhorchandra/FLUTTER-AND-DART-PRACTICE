 main (){
  var map_name = {
    'key1' :'value1',
    'key2' : 2, //key always be string
    'key3' : 3.0,
    'key4' : true
  };

  map_name ['key1'] = 'tonoy'; //overwrite
  map_name ['Key 1'] = 'saha'; // add a new key
// another way to create maps
  var mapName = Map();

  mapName ['Name'] = 'Tonoy';
  mapName ['yearofexperience'] = '02';
  mapName ['Avg.Rating'] = '03';
  mapName ['canlocatetooffice'] = 'true';


  //print(map_name);
  //print(map_name['key3']);
  //print(map_name['key5']);
  //print(mapName);
   print(mapName.isNotEmpty); //keys not empty ? true
   print(mapName.isEmpty); // keys empty? false
   print(mapName.length); //show keys legnth
   print(mapName.keys); // show keys
   print(mapName.values); //show total values
   print(mapName.containsKey('Name')); //contains name?
   print(mapName.containsValue(false)); //contains this false value?
   print(mapName.remove('Name')); //remove this key to the maps
   print(mapName);
}