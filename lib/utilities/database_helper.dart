import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final _database_name = 'co_regDb.db';
  static final _database_version = 1;
  static final _tableName = 'users';
  static final username_column = "username";
  static final password_column = "password";

  DatabaseHelper._privateContructor();

  static final DatabaseHelper instance = DatabaseHelper._privateContructor();

  static Database? _database;
  Future<Database> get database async =>
      _database ??= await _initiateDatabase();

  _initiateDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, _database_name);
    return await openDatabase(path,
        version: _database_version, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) {
    return db.execute('''
        CREATE TABLE $_tableName (
        $username_column TEXT PRIMARY KEY,
        $password_column TEXT NOT NULL )
      ''');
  }

  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.database;

    return await db.insert(_tableName, row);
  }

  Future<List<Map<String, dynamic>>> queryAll(
      String usern, String passw) async {
    Database db = await instance.database;

    return await db.rawQuery(
        'SELECT * FROM $_tableName WHERE username = ? AND password = ?',
        [usern, passw]);
  }

  Future<int> update(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db
        .update(_tableName, row, where: '$username_column = ?', whereArgs: []);
  }

  Future delete(int id) async {
    Database db = await instance.database;
    return await db
        .delete(_tableName, where: '$username_column = ?', whereArgs: [id]);
  }
}
