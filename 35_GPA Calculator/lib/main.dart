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

 /*
  Old EWU grading system
  A+ = 4.00;
  A = 4.00;
  A- = 3.70;
  B+ = 3.30;
  B = 3.00;
  B- = 2.70;
  C+ = 2.30;
  C = 2.00;
  C- = 1.70;
  D+ = 1.30;
  D = 1.00;
  F = 0.00;
  */
  var semester = TextEditingController();
  var course1 = TextEditingController();
  var course2 = TextEditingController();
  var course3 = TextEditingController();
  var course4 = TextEditingController();
  var credit1 = TextEditingController();
  var credit2 = TextEditingController();
  var credit3 = TextEditingController();
  var credit4 = TextEditingController();
  var grade1 = TextEditingController();
  var grade2 = TextEditingController();
  var grade3 = TextEditingController();
  var grade4 = TextEditingController();
  var result = "";
  var bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          title: Text("GPA Calculator"), // create text title
        ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 300,

            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              
                  Text("Check your GPA:", style: TextStyle(
                      fontSize: 34, fontWeight: FontWeight.w700),),

              //semester
                  SizedBox(height: 21,),
                  TextField(
                    controller: semester,
                    decoration: InputDecoration(
                      label: Text("Enter your semester: "),
                      prefixIcon: Icon(Icons.account_box),
                    ),
                    keyboardType: TextInputType.text,
                  ),
              //Course 1
                  SizedBox(height: 21,),
                  TextField(
                    controller: course1,
                    decoration: InputDecoration(
                      label: Text("Enter your course name: "),
                      prefixIcon: Icon(Icons.golf_course),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(height: 11,),
                  TextField(
                    controller: credit1,
                    decoration: InputDecoration(
                      label: Text("Enter your course credit1: "),
                      prefixIcon: Icon(Icons.credit_score),
                    ),
                    keyboardType: TextInputType.number,
                  ),

                  SizedBox(height: 11,),
                  TextField(
                    controller: grade1,
                    decoration: InputDecoration(
                      label: Text("Enter your course grade1: "),
                      prefixIcon: Icon(Icons.grade),
                    ),
                    keyboardType: TextInputType.number,
                  ),
              // Course 2
                  SizedBox(height: 21,),
                  TextField(
                    controller: course2,
                    decoration: InputDecoration(
                      label: Text("Enter your course name: "),
                      prefixIcon: Icon(Icons.golf_course),
                    ),
                    keyboardType: TextInputType.text,
                  ),

                  SizedBox(height: 11,),
                  TextField(
                    controller: credit2,
                    decoration: InputDecoration(
                      label: Text("Enter your course credit2: "),
                      prefixIcon: Icon(Icons.credit_score),
                    ),
                    keyboardType: TextInputType.number,
                  ),

                  SizedBox(height: 11,),
                  TextField(
                    controller: grade2,
                    decoration: InputDecoration(
                      label: Text("Enter your course grade2: "),
                      prefixIcon: Icon(Icons.grade),
                    ),
                    keyboardType: TextInputType.number,
                  ),

              //course 3
                  SizedBox(height: 21,),
                  TextField(
                    controller: course3,
                    decoration: InputDecoration(
                      label: Text("Enter your course name: "),
                      prefixIcon: Icon(Icons.golf_course),
                    ),
                    keyboardType: TextInputType.text,
                  ),

                  SizedBox(height: 11,),
                  TextField(
                    controller: credit3,
                    decoration: InputDecoration(
                      label: Text("Enter your course credit3: "),
                      prefixIcon: Icon(Icons.credit_score),
                    ),
                    keyboardType: TextInputType.number,
                  ),

                  SizedBox(height: 11,),
                  TextField(
                    controller: grade3,
                    decoration: InputDecoration(
                      label: Text("Enter your course grade3: "),
                      prefixIcon: Icon(Icons.grade),
                    ),
                    keyboardType: TextInputType.number,
                  ),

              // Course 4
                  SizedBox(height: 21,),
                  TextField(
                    controller: course4,
                    decoration: InputDecoration(
                      label: Text("Enter your course name: "),
                      prefixIcon: Icon(Icons.golf_course),
                    ),
                    keyboardType: TextInputType.text,
                  ),

                  SizedBox(height: 11,),
                  TextField(
                    controller: credit4,
                    decoration: InputDecoration(
                      label: Text("Enter your course credit4: "),
                      prefixIcon: Icon(Icons.credit_score),
                    ),
                    keyboardType: TextInputType.number,
                  ),
              

                  SizedBox(height: 11,),
                  TextField(
                    controller: grade4,
                    decoration: InputDecoration(
                      label: Text("Enter your course grade4: "),
                      prefixIcon: Icon(Icons.grade),
                    ),
                    keyboardType: TextInputType.number,
                  ),
              
                  SizedBox(height: 16,),
                  ElevatedButton(onPressed: (){
              
                    var sem = semester.text.toString();
                    var cou1 = course1.text.toString();
                    var cou2 = course2.text.toString();
                    var cou3 = course3.text.toString();
                    var cou4 = course4.text.toString();
                    var cr1 = credit1.text.toString();
                    var cr2 = credit2.text.toString();
                    var cr3 = credit3.text.toString();
                    var cr4 = credit4.text.toString();
                    var gr1 = grade1.text.toString();
                    var gr2 = grade2.text.toString();
                    var gr3 = grade3.text.toString();
                    var gr4 = grade4.text.toString();
              
                    if(sem!= '' && cou1!= '' && cou2!= '' && cou3!= '' && cr1!= '' && cr2!= '' && cr3!= '' && cr3!= "" && gr1!="" && gr2!="" && gr3!=""&& gr4!= "") {
                      //var fsem = int.parse(sem);
                      //var fcou1 = int.parse(cou1);
                      //var fcou2 = int.parse(cou2);
                      //var fcou3 = int.parse(cou3);
                      //var fcou4 = int.parse(cou4);
                      var fcr1 = double.parse(cr1);
                      var fcr2 = double.parse(cr2);
                      var fcr3 = double.parse(cr3);
                      var fcr4 = double.parse(cr4);
                      var fgr1 = double.parse(gr1);
                      var fgr2 = double.parse(gr2);
                      var fgr3 = double.parse(gr3);
                      var fgr4 = double.parse(gr4);

                      //calculation
                      var gpacr = (fgr1 * fcr1) + (fgr2 * fcr2) + (fgr3 * fcr3) + (fgr4 * fcr4);
                      var totcr = (fcr1 + fcr2 + fcr3 + fcr4);
                      var gpa = (gpacr / totcr);

                      var msg = '';


                      if (gpa >= 3) {
                        msg = "You have got first class in $sem \nYour courses are $sem: \n$cou1 : $gr1,\n$cou2: $gr2,\n$cou3 : $gr3, \n$cou4 : $gr4 ";
                        bgColor = Colors.green;
                      }
                      else if (gpa < 3 && gpa>=2) {
                        msg = "You have got second class in $sem \nYour courses are $sem: \n$cou1 : $gr1, \n$cou2: $gr2,\n$cou3 : $gr3, \n$cou4 : $gr4 ";
                        bgColor = Colors.blue;
                      }
                      else if(gpa < 2 && gpa>=1 ) {
                        msg = "You have got third class in $sem \nYour courses are $sem:\n$cou1 : $gr1,\n$cou2: $gr2,\n$cou3 : $gr3 , \n$cou4 : $gr4 ";
                        bgColor = Colors.yellow;
                      }
                      else{
                        msg = "You are fail in $sem \nYour courses are \n$cou1 in $sem: $gr1, \n$cou2: $gr2,\n$cou3 : $gr3,\n$cou4 : $gr4 ";
                        bgColor = Colors.red;
                      }
                      setState(() {
                        result = "$msg \nTotal Credit: $totcr,\nTotal Gpacr: ${gpacr.toStringAsFixed(2)}, \nSemester GPA: ${gpa.toStringAsFixed(2)}";
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
        ),
      )
    );
  }
}

