import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
  List toDoList = [];

  // reference the box
  final _mybox = Hive.box('mybox');

  // Run If this is the first time ever opening this App 

  void createInitialData(){
    toDoList=[
      ["Make Tutorial" , false],
      ["Do Exercise" , false],
    ];
  }

  // Load the data from the Database
  void loadData(){
    toDoList = _mybox.get("TODOLIST");
  }

  // Update the DataBase
  void updateDataBase(){
    _mybox.put("TODOLIST", toDoList);
  }
}