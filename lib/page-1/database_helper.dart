import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;

  DatabaseHelper._privateConstructor();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'text_editor.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE IF NOT EXISTS notes (
        id INTEGER PRIMARY KEY,
        content TEXT
      )
    ''');
  }

  Future<int> deleteAllNotes() async {
  Database db = await instance.database;
  return await db.delete('notes');
}

  Future<int> updateNote(String content) async {
  Database db = await instance.database;
  return await db.update('notes', {'content': content}, where: 'content = ?', whereArgs: [content]);
}

  Future<int> insertNote(String content) async {
    Database db = await instance.database;
    return await db.insert('notes', {'content': content});
  }

  Future<List<Map<String, dynamic>>> getNotes() async {
    Database db = await instance.database;
    return await db.query('notes');
  }
}