import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_second_app/my_profile_screen.dart';


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
      home: DashBoardsScreen(),
    );
  }
}



class DashBoardsScreen extends StatelessWidget {
  var nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Classico'),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("DashBoard Screen", style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ), ),
              SizedBox(
                height: 11,
              ),

              TextField(
                controller: nameController,
              ),

              SizedBox(
                height: 11,
              ),

              ElevatedButton(onPressed: (){

                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen(nameController.text.toString()),
                    ));

              }, child: Text('Next'))
            ],
          ),
        ),
      )
    );
  }
}

