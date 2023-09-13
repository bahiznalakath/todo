import 'package:flutter/material.dart';

class ToDo {
  String? id;
  String? todoText;
  bool isDone;
  DateTime? dueDate;
  TimeOfDay? dueTime;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
    required this.dueDate,
    required this.dueTime,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(
        id: '01',
        todoText: 'Morning Exercise',
        isDone: true,
        dueDate: DateTime.now(), // Set a default date here
        dueTime: TimeOfDay.now(), // Set a default time here
      ),
      ToDo(id: '02', todoText: 'Buy Groceries', isDone: true, dueDate: null, dueTime: null),
      ToDo(id: '03', todoText: 'Check Emails', dueDate: null, dueTime: null),
      ToDo(id: '04', todoText: 'Team Meeting', dueDate: null, dueTime: null),
      ToDo(id: '05', todoText: 'Work on mobile apps for 2 hours', dueDate: null, dueTime: null),
      ToDo(id: '06', todoText: 'Dinner with Jenny', dueDate: null, dueTime: null),
    ];
  }
}
