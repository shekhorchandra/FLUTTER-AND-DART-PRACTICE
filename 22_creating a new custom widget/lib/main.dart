import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_second_app/widgets/rounded_btn.dart';


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
          title: Text("Creating A new Customer widget: "),
        ),

        body: Center(
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 50,
                child: RoundedButton(
                  btnName: "Play",
                  icon: Icon(Icons.play_arrow),
                callBack: (){
                  print("Logged in!!");
                },
                ),
              ),
              Container(height: 11,),
              Container(
                width: 150,
                height: 50,
                child: RoundedButton(
                  btnName: "Press",

                  callBack: (){
                    print("Playing!!");
                  },
                  bgColor: Colors.orange,
                ),
              ),
              Container(height: 11,),
              Container(
                width: 150,
                height: 50,
                child: RoundedButton(
                  btnName: "Place",
                  icon: Icon(Icons.place),
                  callBack: (){
                    print("Placing!!");
                  },
                  bgColor: Colors.green,
                ),
              ),
            ],
          ),

        )
    );
  }
}
