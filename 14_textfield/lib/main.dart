import 'package:flutter/material.dart';
import 'package:my_second_app/ui_helper/util.dart';


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

        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellowAccent),
        //primarySwatch: Colors.green,

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
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColorDark,
          //backgroundColor: Colors.pink,
          title: Text("Login Page"), // create text title
        ),

      body: Center(child: Container(

          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 100,),
              TextField(
                //keyboardType: TextInputType.number,
                controller: emailText,

                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                            color: Colors.red,
                            width: 2
                        )
                    ),
                    enabledBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2
                        )
                    ),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                            color: Colors.brown,
                            width: 2
                        )
                    ),
                    //prefixText: "Username exits",
                    hintText: "Enter your email address: ",
                    suffixIcon: IconButton(
                      icon: Icon(Icons.email, color: Colors.orange,),
                      onPressed: (){

                      },
                  )


                ),
              ),
              Container(height: 11,),

              TextField(
                controller: passText,
                obscureText: true, // hide password
                obscuringCharacter: '#', // show character hide password
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.red,
                          width: 2
                      )
                  ),
                  enabledBorder: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2
                      )
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.brown,
                          width: 2
                      )
                  ),
                    //prefixText: "User password",
                    hintText: "Enter your password: ",
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye, color: Colors.orange,),
                      onPressed: (){

                      },
                    )

                ),
              ),
              Container(height: 11,),
              TextButton(
                  child: Text("Forget Password"),
                  onPressed: () {

                  }
              ),
              Container(height: 11,),
              ElevatedButton(onPressed: (){
                String uEmail = emailText.text.toString();
                String uPass = passText.text;
                
                print("Email: $uEmail, Pass:$uPass");

              }, child: Container(
                width: 150,

                child: Center(
                  child: Text(
                    "Login", style: TextStyle(fontSize: 20),
                  ),
                ),
              )
              ),
              //Container(height: 200,),
             TextButton(
                  child: Text("New User? Create Account"),
                  onPressed: () {

              }
              ),



            ],
          )))

    );
  }
}