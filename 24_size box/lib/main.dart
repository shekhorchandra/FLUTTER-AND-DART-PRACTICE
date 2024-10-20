import 'package:flutter/cupertino.dart';
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          title: Text("Sized Box: "),
        ),

        body: Wrap(
          direction: Axis.vertical,
          children: [

            SizedBox.square(
              dimension: 100,
              child: ElevatedButton(
                onPressed: (){

                },
                child: Text("Click"),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            SizedBox.square(
              dimension: 100,
              child: ElevatedButton(
                onPressed: (){

                },
                child: Text("Click"),
              ),
            ),

            SizedBox(
              height: 40,
            ),


            SizedBox.square(
              dimension: 100,
              child: ElevatedButton(
                onPressed: (){

                },
                child: Text("Click"),
              ),
            ),
          ],
        ),
        );


      /*Center(
          child: SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              onPressed: (){

              },
              child: Text("Click"),
            ),
          ),
        ),

      */
  }
}
