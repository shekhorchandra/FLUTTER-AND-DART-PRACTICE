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

    var time = DateTime.now();

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
          title: Text("Date Picker: "), // create text title
        ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Select Date",
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton (onPressed: () async {
              DateTime? datePicked = await showDatePicker(
                  context: context,
                  //initialDate: DateTime.now(),
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2024));

              if(datePicked!=null){
                print("Date selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}");
              }

            },
                child: Text("Show")),
            ElevatedButton (onPressed: () async {
              TimeOfDay? pickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                //initialEntryMode: TimePickerEntryMode.input
                  initialEntryMode: TimePickerEntryMode.dial
              );

              if(pickedTime!=null){
                print("Time selected: ${pickedTime.hour}-${pickedTime.minute}");
              }

            },
                child: Text("Select Time"))
          ],
        ),
      )

    
    );

  }
}