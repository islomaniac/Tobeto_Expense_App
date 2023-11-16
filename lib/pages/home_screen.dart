import 'package:expenseapp/pages/expenses_page.dart';
import 'package:expenseapp/widget/new_expense.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense App"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurpleAccent,
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (ctx) {
                      return const NewExpense();
                    });
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: const ExpensesPage(),
    );
  }
}
