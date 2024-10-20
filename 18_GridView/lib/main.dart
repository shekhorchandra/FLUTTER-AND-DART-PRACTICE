import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, //remove debug tag
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var arrColors = [
      Colors.red,
      Colors.orange,
      Colors.grey,
      Colors.blue,
      Colors.pink,
      Colors.green,
      Colors.purpleAccent,
      Colors.brown,

    ];

    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("GridView: "), // create text title
        ),

      body:
      GridView.builder(itemBuilder: (context, index) {
        return Container(color: arrColors[index],);
      }, itemCount: arrColors.length, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 11,
        crossAxisSpacing: 11,

      ),)


      /*GridView.count(crossAxisCount: 4,
        crossAxisSpacing: 11,
        mainAxisSpacing: 11,
        children: [
          Container(color: arrColors[0],),
          Container(color: arrColors[1],),
          Container(color: arrColors[2],),
          Container(color: arrColors[3],),
          Container(color: arrColors[4],),
          Container(color: arrColors[5],),
          Container(color: arrColors[6],),
          Container(color: arrColors[7],),
        ],
      )*/

      /*
      GridView.extent(
        maxCrossAxisExtent: 200,
      crossAxisSpacing: 11,
      mainAxisSpacing: 11,

      children: [
        Container(color: arrColors[0],),
        Container(color: arrColors[1],),
        Container(color: arrColors[2],),
        Container(color: arrColors[3],),
        Container(color: arrColors[4],),
        Container(color: arrColors[5],),
        Container(color: arrColors[6],),
        Container(color: arrColors[7],),
      ],
    ),
    */


    
    );

  }
}