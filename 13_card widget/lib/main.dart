
import 'package:flutter/material.dart';
import 'package:my_second_app/ui_helper/util.dart';


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

        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        primarySwatch: Colors.green,

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

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColorLight,
          //backgroundColor: Colors.pink,
          title: Text("Card Widget: "), // create text title
        ),

      body: Center(
        child: Card(
          shadowColor: Colors.blue,
            elevation: 12,
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Hello World!', style: TextStyle(fontSize: 25),),
        )),
      )

    );
  }
}