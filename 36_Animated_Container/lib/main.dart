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
  var _width = 200.0;

  var _height = 100.0;

  Color bgColr = Colors.blueGrey;

  bool flag = true;
  
  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(3)
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Foo Animations"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
                width: _width,
                height: _height,
                curve: Curves.fastOutSlowIn,
                decoration: myDecor,
                duration: Duration( seconds: 2),
            ),
            ElevatedButton(onPressed: () {

              setState(() {
                if(flag){
                  _width = 100.0;
                _height = 200.0;
                bgColr = Colors.orange;
                myDecor = BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                    color : Colors.orange
                );

                flag = false;
                }
                else{
                  _width = 200.0;
                  _height = 100.0;
                  bgColr = Colors.blue;
                  myDecor = BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color : Colors.blue
                  );
                  flag = true;
                }

              });

            },
                child: Text("Animate"))

          ],
        ),
      )
    );
  }
}
