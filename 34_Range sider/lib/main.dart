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

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  RangeValues values = RangeValues(0,100);



  @override
  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          title: Text("Range Sider"), // create text title
        ),
      body: Center(
        child: RangeSlider(

          values: values,
          labels: labels,
          divisions: 10,
          activeColor: Colors.blue,
          inactiveColor: Colors.black,
          min: 0,
          max: 100,
          onChanged: (newValue){
            values =newValue;
            print("${newValue.start}, ${newValue.end}");
            setState(() {

            });

          },
        ),
      )
    );
  }
}

