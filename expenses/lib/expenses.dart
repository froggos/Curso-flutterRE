import 'package:expenses/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Curso de Flutter",
      amount: 20000,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: "Entrada al cine",
      amount: 5000,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text("El grafico"),
          Text("Lista de gastos"),
        ],
      ),
    );
  }
}
