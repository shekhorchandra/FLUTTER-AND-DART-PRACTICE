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

    var arrNames = ["Raman", "Ramnujan", "Rajesh", "James", "Rahim", "Ram"];

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
          title: Text("Flutter Container"), // create text title
        ),
/*
    body: ListView(
      //scrollDirection: Axis.horizontal,
      scrollDirection: Axis.vertical,
      reverse: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("One", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Two", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Three", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Four", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Five", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
        )
      ],
    )
        
*/
/*
    body: ListView.builder(itemBuilder:(context, index) {
      return Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),);


    },
      //itemCount: 5,
      itemCount: arrNames.length,
      itemExtent: 100,
      scrollDirection: Axis.horizontal,
      //scrollDirection: Axis.horizontal,

    ),
*/
      body: ListView.separated(itemBuilder:(context, index) {
        return Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),);


      },
        //itemCount: 5,
        itemCount: arrNames.length,
        separatorBuilder: (context, index){
        return Divider(height: 100, thickness: 2,);
        },
        //scrollDirection: Axis.horizontal,

      ),
    
    
    );

  }
}