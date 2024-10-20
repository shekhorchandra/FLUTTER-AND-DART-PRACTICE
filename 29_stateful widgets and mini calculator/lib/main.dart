import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
      ),
      body: Container(
        color: Colors.blue.shade100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(21.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){
                        var no1 = double.parse(no1Controller.text.toString());
                        var no2 = double.parse(no2Controller.text.toString());

                        var sum = no1+no2;

                        result = "The sum of $no1 and $no2 is $sum";

                        setState(() {

                        });
                      }, child: Text('Add')),
                      ElevatedButton(onPressed: (){
                        var no1 = double.parse(no1Controller.text.toString());
                        var no2 = double.parse(no2Controller.text.toString());

                        var sub = no1-no2;

                        result = "The sub of $no1 and $no2 is $sub";

                        setState(() {

                        });
                      }, child: Text('Sub')),
                      ElevatedButton(onPressed: (){
                        var no1 = double.parse(no1Controller.text.toString());
                        var no2 = double.parse(no2Controller.text.toString());

                        var mult = no1*no2;

                        result = "The multiplication of $no1 and $no2 is $mult";

                        setState(() {

                        });

                      }, child: Text('Mult')),
                      ElevatedButton(onPressed: (){
                        var no1 = double.parse(no1Controller.text.toString());
                        var no2 = double.parse(no2Controller.text.toString());

                        var div = no1/no2;

                        result = "The division of $no1 and $no2 is, ${div.toStringAsFixed(2)}";

                        setState(() {

                        });

                      }, child: Text('Div')),

                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(21),
                child: Text(result, style:TextStyle(fontSize:25, color: Colors.grey),),)

              ],
            ),
          ),
        ),

      )
    );
  }
}

