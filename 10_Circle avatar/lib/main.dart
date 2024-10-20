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
          backgroundColor: Theme.of(context).primaryColorLight,
          title: Text("Flutter ListTile"), // create text title
        ),

      body:

      /*
      Container(
        color: Colors.pink,

        child: Center(
          //child: Container(
            //width: 300,
            //height: 300,
            child: CircleAvatar(
                  child: Text("Customer", style: TextStyle(fontSize: 25, color: Colors.white),),
                  backgroundImage: AssetImage("assets/images/logo.webp"),
                  backgroundColor: Colors.white70,
                  //radius: 100,
                  minRadius: 50,
                  maxRadius: 100,
          ),
        ),
      ),
      */

      Container(
        color: Colors.pink,

        child: Center(
          child: CircleAvatar(
            child: Column(
              children: [
                Container(
                width: 70,
                height: 70,
                child: Image.asset("assets/images/logo.webp")),
                Text("Customer"),
              ],
            ),
          //  backgroundImage: AssetImage("assets/images/logo.webp"),
            backgroundColor: Colors.white70,
            //radius: 100,
            minRadius: 50,
            maxRadius: 50,
          ),
        ),
      ),

    );
  }
}