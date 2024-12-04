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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
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
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result = "";
  var bgColor = Colors.amber;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          title: Text("BMI Calculator"), // create text title
        ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 300,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text("Check your BMI", style: TextStyle(
                    fontSize: 34, fontWeight: FontWeight.w700),),

                SizedBox(height: 21,),

                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    label: Text("Enter your Weight (Kg)"),
                    prefixIcon: Icon(Icons.line_weight),
                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 11,),
                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                    label: Text("Enter your Height (Feet)"),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 11,),
                TextField(
                  controller: inController,
                  decoration: InputDecoration(
                    label: Text("Enter your Height (Inc)"),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 16,),
                ElevatedButton(onPressed: (){

                  var wt = wtController.text.toString();
                  var ft = ftController.text.toString();
                  var inch = inController.text.toString();

                  if(wt!= '' && ft!= '' && inch!=""){
                    //bmi calculation

                    var iWt = int.parse(wt);
                    var iFt = int.parse(ft);
                    var iInch = int.parse(inch);

                    //calculation

                    var tInch = (iFt*12)+iInch;
                    var tCm = tInch*2.54;
                    var tM = tCm/100;
                    var bmi = iWt/(tM*tM);

                    var msg = '';

                    if(bmi>25){
                      msg = "You are OverWeight!!";
                          bgColor = Colors.orange;
                    }
                    else if(bmi<18)
                      {
                        msg = "You are UnderWeight!!";
                        bgColor = Colors.red;
                      }
                    else{
                      msg = "You are Prefect!!";
                      bgColor = Colors.green;
                    }

                    setState(() {
                      result = "$msg \nYour BMI is: ${bmi.toStringAsFixed(2)}";
                    });

                  }
                  else{
                    setState(() {
                      result = "please fill all the required blanks!!";
                    });

                  }

                }, child: Text("Calculate")),

                Text(result, style: TextStyle(
                fontSize: 18,),)

              ],
            ),
          ),
        ),
      )
    );
  }
}

