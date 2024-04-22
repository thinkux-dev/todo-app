import 'package:flutter/foundation.dart';

import 'todo_page.dart';

class TodoProvider extends ChangeNotifier {
  List<MyTodo> _todos = [];
  List<MyTodo> get todos => _todos;

  addTodo(MyTodo todo) {
    _todos.add(todo);
    notifyListeners();
  }

  updateTodo(bool value, int index) {
    _todos[index].completed = value;
    notifyListeners();
  }
}