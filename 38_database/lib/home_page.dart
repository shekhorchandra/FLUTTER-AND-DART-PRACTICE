import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';

import 'data/local/db_helper.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ///Controlers
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

  List<Map<String, dynamic>> allNotes = [];
  DBHelper? dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = DBHelper.getInstance;
    getNotes(); //outside fatch from database
  }

  void getNotes() async{
    allNotes = await dbRef!.getAllNotes(); //check
    setState(() {

    }); //future bulider use

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
      ),
      /// all notes viwed here
      body: allNotes.isNotEmpty ? ListView.builder(
          itemCount: allNotes.length,
          itemBuilder: (_, index){
            return ListTile(
              leading: Text("${allNotes[index][DBHelper.COLUMN_NOTE_SNO]}"),
              title: Text(allNotes[index][DBHelper.COLUMN_NOTE_TITLE]),
              subtitle: Text(allNotes[index][DBHelper.COLUMN_NOTE_DESC]),
            );

      }) : Center(
        child: Text('NO NOTES YET!!'),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          String errorMsg = "";
        /// note to be adda from here
          showModalBottomSheet(context: context, builder: (context){
            return Container(
              child: Column(
                children: [
                  Text("Add Note", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 21,
                  ),
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      hintText: "Enter title here",
                      label: Text("Title*"),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      )
                    ),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  TextField(
                    controller: descController,
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: "Enter descriptions here",
                      label: Text("Description*"),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      )
                    ),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Row(
                    children: [
                      Expanded(child: OutlinedButton(
                          style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                            side: BorderSide(
                              width: 1,
                              color: Colors.black
                            )
                          )),

                          onPressed: () async {
                            var title = titleController.text;
                            var desc = descController.text;
                            if(title.isNotEmpty && desc.isNotEmpty){
                              bool check = await dbRef!.addNote(mTitle: title, mDesc: desc);
                              if(check){
                                getNotes();
                              }//add note

                            }
                            else {
                              errorMsg = "*Please fill all the required requirments!!";

                              setState(() {

                              });
                            }
                            Navigator.pop(context);
                            titleController.clear();
                            descController.clear();



                          }, child: Text("Add Note"))),
                      SizedBox(
                        width : 21,
                      ),
                      Expanded(child: OutlinedButton(
                          style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                              side: BorderSide(
                                  width: 1,
                                  color: Colors.black
                              )
                          )),
                          onPressed: (){
                            Navigator.pop(context);
                          }, child: Text("Cancel"))),
                      Text(errorMsg),
                    ],
                  )
                ],
              ),
            ); //high function model

          });//show on ui
        },
        child: Icon(Icons.add),
      ),
    );
  }
}