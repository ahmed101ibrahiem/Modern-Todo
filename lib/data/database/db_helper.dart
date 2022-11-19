
import 'package:sqflite/sqflite.dart';

class DBHelper{
  DBHelper._init();
  static DBHelper? _dbHelper;
  Database? _database;
  factory DBHelper(){
    return _dbHelper ??=DBHelper._init();
  }
  Future<Database> _getDB() async {
    return _database ??= await _initDatabase();
  }
  Future<Database> _initDatabase()async{
    final String databasePath =  await getDatabasesPath();

    ;
  }
}