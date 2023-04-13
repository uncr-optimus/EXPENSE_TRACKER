import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';


class Expenses extends StatefulWidget{
  @override
  const Expenses({super.key});
    State <StatefulWidget> createState(){
    return _ExpensesState();
    }
  }

class _ExpensesState extends State<Expenses>{
  final List<Expense> _registeredExpenses = [
    Expense(title: 'flutter', amount: 19.99, date: DateTime.now(), category: Category.work),
    Expense(title: 'cinema', amount: 15.69, date: DateTime.now(), category: Category.leisure),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      const Text('The Chart'),
      Expanded(child:ExpensesList(expenses: _registeredExpenses)            //since here list is nested in coulumn so we have to wrap the calling constructor in expand widget
    )],),);
  }

}