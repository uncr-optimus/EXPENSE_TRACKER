import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';

class ExpensesList extends StatelessWidget {
  @override
  ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});
  void Function(Expense expense) onRemoveExpense;
  final List<Expense> expenses;

  Widget build(BuildContext context) {
    return ListView.builder(
      //we are using ListView instead of coulumn here because list can be long so we only want to show as much as much it is renderd on the scrollable list
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(
              0.5), //since we already define Theme in main dart file so we can use that again again and again for styling pupose instead of using decoration and textstyle format
          margin: EdgeInsets.symmetric(
              horizontal: Theme.of(context).cardTheme.margin!.horizontal),
        ),
        key: ValueKey(expenses[index]),     //we ca use anything for value of key but here we are using expenses[index]
        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        child: ExpenseItem(
          expenses[index], //child want a widgit that has to be swipable
        ),
      ),
    );
  }
}
