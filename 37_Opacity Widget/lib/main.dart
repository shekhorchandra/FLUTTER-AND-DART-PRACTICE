import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
  var myOpcity = 1.0;
  bool flag = true;
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Foo Animations"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(opacity: myOpcity, duration:Duration(seconds: 4), curve: Curves.fastOutSlowIn,
              child: Container(
                width: 350,
                height: 150,
                color: Colors.blue,
              ),),
            ElevatedButton(onPressed: (){

              setState(() {

                if(flag){
                  myOpcity = 0.0; //invisiable
                  flag = false;
                }
                else
                  {
                    myOpcity = 1.0; //visiable
                    flag = true;
                  }
              });

            }, child: Text("Close"))
          ],
        ),
      )
    );
  }
}
