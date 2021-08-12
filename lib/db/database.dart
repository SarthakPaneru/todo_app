import 'package:sqflite/sqflite.dart';
import 'package:todo_app/model/todo.dart';
import 'package:path/path.dart';

class TodoDatabase {
  static final TodoDatabase instance = TodoDatabase._init();

  // "?" represents variable might have value null
  static Database? _database;

  TodoDatabase._init();

  Future<Database> get database async {
    // we add ! if we are sure _database or any variable will never be null..
    // https://stackoverflow.com/questions/66860060/in-flutter-dart-why-do-we-sometimes-add-a-question-mark-to-string-when-decl
    if (_database != null) return _database!;
  }
}
