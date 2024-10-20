
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
        textTheme: TextTheme(
         headline1:TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          headline2:TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.blue),
         subtitle1: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
          subtitle2: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic, color: Colors.orange), //another way

        ),
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
          title: Text("Styles and Themes: "), // create text title
        ),

      body: Center(
        child: Column(
          children: [
            Text('Text 1', style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.orange),), //one way
            Text('Text 2', style: Theme.of(context).textTheme.subtitle1,), //another way
            Text('Text 3', style: mTextStyle21(textColor: Colors.brown),),
            Text('Text 4', style: mTextStyle25(textColor: Colors.teal),),

          ],
        ),
      ),

    );
  }
}