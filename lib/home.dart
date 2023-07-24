import 'package:flutter/material.dart';

import '../model/todo.dart';
import '../constants/colors.dart';
import '../widgets/todo_item.dart';

class  Home extends StatefulWidget {
  Home({key? key}) : super(key: key);
  // This widget is the root of your application
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todosList = ToDo.todoList();
  List<ToDo>_foundToDo = ();
  final _todoController = TextEditingController();

  @override
  void initState() {
    _foundToDo = todosList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey
        appBar: _buildAppBar(),
         body: Stack(
         children: (
         Container(
         padding: EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 15,
    ), // EdgeInsets.symmetric
    child: Column(
    children: [
    searchBox(),
    Expanded(
    child: ListView(
    children: [
    Container(
    margin: EdgeInsets.only(
    top: 50,
    bottom: 20,
    ), // EdgeInsets.only
    child: Text(
    'All ToDos',
    style: TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w500,
    ), // TextStyle
    ), // Text
    ), // Container

    for ( ToDo todo in todosList )
    ToDoItem(
    todo: todoo,
    onToDoChanged: _handleToDoChange,
    onDeleteItem: _deleteToDoItem,
    ), // ToDoItem
    ],
    ), // Listview
    ) // Expanded
    ],
    ), // Column
    ); // Container
    Align(
    alignment: Alignment.bottomCenter,
    child: Row(Children: [
      Expanded(
    child: Container(
    margin: EdgeInsets.only(
    bottom:20,
    right: 20,
    left: 20,
    ),// EdgeInsets.only
    decoration: BoxDecoration(
    color: Colors.white,
     boxShadow: const [
     BoxShadow(
    color: Colors.grey,
    offset:  Offset(0.0, 0.0),
    blurRadius: 10.0,
    spreadRadius:0.0,
    ),// BoxShadow
    ],
  borderRadius: BorderRadius.circular(10),
  ), // BoxDecoration


  child: TextField(
    controller: _todoController,
      decoration: InputDecoration(
       hintText: 'Add a new todo item',
       border: InputBorder.none, // InputDecoration,
      ),// TextField
      ), // Container
       ), // Expanded
       Container(
       margin: EdgeInsets.only(
      bottom: 20,
      right: 20,
      ), // EdgeInsets.only
      child: ElevatedButton(
      child: Text('+', style: TextStyle(fontSize: 40,),),
      onPressed: () (),
      style: ElevatedButton.styleFrom(
      primary: Green,
     minimumSize: Size(60,60),
      elevation: 10,
    ),
    ], // ElevatedButton
  }, // Container
  )), // Row
  ), // Align
  ],
], // Stack
}; // Scaffold
}

void _handleToDoChange(ToDo todo) {
      setState[() {
    todo.isDone = !todo. isDone;
    });
    }

    void _deleteToDoItem(String id) {
  setState[() {
    todosList.removewhere((item) => item.id = id);
  });
    }

    void _addToDoItem(String toDo) {
  setState[() {
    todosList.add(ToDo(
      id: DateTime
          .now()
          .millisecondsSinceEpoch
          .toString(),
      todoText: toDo,
    )); // ToDo
  });
 _todoController.clear();
}

void _runFilter(String enteredKeyword) {
  List<ToDo> results = ();
  if(enteredKeyword.isEmpty) {
    results = todoList;
  } else {
    results = todosList.where((item) => item.todoText. toLowerCase()
  }
}

  Widget searchBox() {
    return Container(
    padding: EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    ), //BoxDecoration
  Child: TextField(
    onChanged: (value) => _runFilter(value),
      decoration: InputDecoration(
      contentPadding: EdgeInsets.all(0),
prefixIcon: Icon(
 Icons.search,
    color:blue,
    size: 20,
    ), // Icon
    prefixIconConstraints: BoxConstraints(
    maxHeight: 20,
    minWidth: 25,
    ), // BoxConstraints
    border: InputBorder.none,
    hintText:  'Search',
    hintStyle: TextStyle(color: yellow),
    ), //InputDecoration
    ), // Textfield







