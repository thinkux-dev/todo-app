import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_solution_with_provider/todo_page.dart';
import 'todo_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TodoPage(),
    );
  }
}

