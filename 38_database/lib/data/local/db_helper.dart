import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper{

  ///singleton
  DBHelper._();   //privatiezation constructor , donot use this outside of package or function DBHelper() public

  static final DBHelper getInstance = DBHelper._();

  ///table note
  static final String TABLE_NOTE = "note";
  static final String COLUMN_NOTE_SNO = "s_no";
  static final String COLUMN_NOTE_TITLE = "title";
  static final String COLUMN_NOTE_DESC = "desc";

  Database? myDB; //handle null

  /// db open (path -> if exits then open else create db)
  Future <Database> getDB() async{

    /*
    myDB ??= await openDB();
    return myDB!;
    */

    if(myDB!=null){
      return myDB!;
    }
    else{
      myDB = await openDB();
      return myDB!;
    }

  }
    Future<Database> openDB() async{

    Directory appDir= await getApplicationDocumentsDirectory();

    String dbPath = join(appDir.path, "noteDB.db"); //note pade name
    
    return await openDatabase(dbPath, onCreate:(db, version){

      db.execute("create table $TABLE_NOTE ( $COLUMN_NOTE_SNO integer primary key autoincrement, $COLUMN_NOTE_TITLE trxt, $COLUMN_NOTE_DESC text) ");
      // table 2
      //table 3
      //table 4
    }, version: 1);

  }

  /// all queries
  /// insertion
  Future<bool> addNote({required String mTitle, required String mDesc}) async {
    var db = await getDB();
    int rowsEffected = await db.insert(TABLE_NOTE, {
      COLUMN_NOTE_TITLE : mTitle,
      COLUMN_NOTE_DESC : mDesc
    });
    return rowsEffected>0; // row insert hole 0 theke beshi hoy

  }

  //reading all data
  Future<List<Map<String, dynamic>>> getAllNotes() async{

    var db = await getDB();
    ///select * from note
    List<Map<String, dynamic>> mData = await db.query(TABLE_NOTE,);

    return mData;
  }

}