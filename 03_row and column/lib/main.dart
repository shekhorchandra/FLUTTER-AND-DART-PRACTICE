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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
        body: Column(
          children: [
            Text('A', style: TextStyle(fontSize: 55),),
            Text('B', style: TextStyle(fontSize: 55),),
            Text('C', style: TextStyle(fontSize: 55),),
            Text('D', style: TextStyle(fontSize: 55),),
            Text('E', style: TextStyle(fontSize: 55),),
            Text('F', style: TextStyle(fontSize: 55),),
          ],
        )
    );
*/

        /*
        
    body: Container(
      //width: 300,
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.end,
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget> [
          Text('A', style: TextStyle(fontSize: 25),),
          Text('B', style: TextStyle(fontSize: 25),),
          Text('C', style: TextStyle(fontSize: 25),),
          Text('D', style: TextStyle(fontSize: 25),),
          Text('E', style: TextStyle(fontSize: 25),),
          Text('F', style: TextStyle(fontSize: 25),),
          ElevatedButton(onPressed: (){

          }, child: Text ('Click', style: TextStyle(fontSize: 25),),)

        ],
      ),
    )
    );
    */


        /*
        body: Container(
          //width: 300, //for row
          //height: 300, //for column
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //mainAxisAlignment: MainAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.end,
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget> [
              Text('A', style: TextStyle(fontSize: 25),),
              Text('B', style: TextStyle(fontSize: 25),),
              Text('C', style: TextStyle(fontSize: 25),),
              Text('D', style: TextStyle(fontSize: 25),),
              Text('E', style: TextStyle(fontSize: 25),),
              Text('F', style: TextStyle(fontSize: 25),),
              ElevatedButton(onPressed: (){

              }, child: Text ('Click', style: TextStyle(fontSize: 25),),)

            ],
          ),
        )
    );

*/

    body: Center(
      child: InkWell(
        onTap: (){
          print("Tapped on Container");
        },
        onLongPress: (){
          print("Long Pressed on Container");
        },
        onDoubleTap: (){
          print("Double-Tapped on Container");
        },
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          child: Center(child: InkWell(
            onTap: (){
              print("Text Widget Tapped!");
            },
              onLongPress: (){
                print("Text Long Pressed on Tapped");
              },
              onDoubleTap: (){
                print("Text Double-Tapped on Tapped");
              },
              child: Text(
                "Click Here",
                style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700),
              )))
        ),
      ),
    )
    );

















  }
}