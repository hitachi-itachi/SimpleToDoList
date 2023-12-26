import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  //referencing of the box
  final _myBox = Hive.box('Mybox');
//run this method if it's first time opening this app(default data)
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  //load the data
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }
//Update the data
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
