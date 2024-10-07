import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget { 
  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List<String> toDoItems = [
    "Buy groceries",
    "Walk the dog",
    "Complete homework"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do List'),
      ), // AppBar
      body: ListView.builder(
        itemCount: toDoItems.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(toDoItems[index]),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                toDoItems.removeAt(index);
              });

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Item deleted'),
                ),
              );
            },
            background: Container(
              color: Colors.red, 
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(Icons.delete, color: Colors.white),
            ),
            child: ListTile(
              title: Text(toDoItems[index]),
            ), 
          ); 
        },
      ), 
    ); 
  }
}
