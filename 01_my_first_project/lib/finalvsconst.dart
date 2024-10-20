 void main (){
  print('Welcome to Dart!');

  final names = [ //final variable means you are not allowed to reassign
    'Raman',
    'Aman',
    'Ramu',
    'Raj'
  ];

  //names = ['Priya', 'puja', 'Pakash', 'padip'];
  names.add('Peter');
  names.remove('Aman');
  print('$names');




 }