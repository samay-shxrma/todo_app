import 'package:hive/hive.dart';

class ToDoDataBase {

   List toDoList = [];

  //reference our box
  final myBox = Hive.box('mybox');

  //run this method if this is the 1st time ever opening this app
  void createInitialData(){
    toDoList = [
      ["Make tutorial", true],
      ["Do the Excercise", false],
    ];
  }

  //load the data from database
  void loadData(){
    toDoList = myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase(){
    myBox.put("TODOLIST", toDoList);
  }
}