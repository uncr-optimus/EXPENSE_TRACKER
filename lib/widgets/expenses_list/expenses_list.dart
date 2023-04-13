import 'package:flutter/widgets.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpensesList extends StatelessWidget{   
  @override
  ExpensesList({super.key, required this.expenses});
  final List<Expense> expenses;
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,itemBuilder: (ctx,index) => Text(expenses[index].title),
    );
  }
}