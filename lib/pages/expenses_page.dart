import 'package:expenseapp/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpensesPage extends StatefulWidget {
  const ExpensesPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ExpensesPageState createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<ExpensesPage> {
  List<Expense> expenses = [
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Fatura Ödemesi", price: 200.0, date: DateTime.now()),
    Expense(name: "Akaryakıt", price: 120.0, date: DateTime.now()),
    Expense(name: "Restoran Yemeği", price: 80.0, date: DateTime.now()),
    Expense(name: "Giysi Alışverişi", price: 250.0, date: DateTime.now()),
    Expense(name: "Eğlence", price: 100.0, date: DateTime.now()),
    Expense(name: "Temizlik Malzemeleri", price: 50.0, date: DateTime.now()),
    Expense(name: "Saç Kuaförü", price: 120.0, date: DateTime.now()),
    Expense(name: "Ulaşım", price: 30.0, date: DateTime.now()),
    Expense(name: "Elektrik Faturası", price: 150.0, date: DateTime.now()),
    Expense(name: "Kitap Alışverişi", price: 40.0, date: DateTime.now()),
    Expense(name: "Bisiklet Tamiri", price: 70.0, date: DateTime.now()),
    Expense(name: "Spor Malzemeleri", price: 90.0, date: DateTime.now()),
    Expense(name: "Cep Telefonu Faturası", price: 60.0, date: DateTime.now()),
    Expense(name: "Sinema Bileti", price: 25.0, date: DateTime.now()),
    Expense(name: "Ev Yemek Malzemeleri", price: 80.0, date: DateTime.now()),
    Expense(name: "Günlük Kafe Harcaması", price: 20.0, date: DateTime.now()),
    Expense(name: "Oyun Konsolu Oyunu", price: 70.0, date: DateTime.now()),
    Expense(name: "Ayakkabı Alışverişi", price: 120.0, date: DateTime.now()),
    Expense(name: "Müzik Konseri", price: 90.0, date: DateTime.now()),
    Expense(name: "Kozmetik Ürünleri", price: 45.0, date: DateTime.now()),
    Expense(name: "Bebek Bezi", price: 70.0, date: DateTime.now()),
    Expense(name: "Kışlık Mont", price: 180.0, date: DateTime.now()),
    Expense(name: "Yüzme Havuzu Girişi", price: 40.0, date: DateTime.now()),
    Expense(name: "Evcil Hayvan Malzemeleri", price: 60.0, date: DateTime.now()),
    Expense(name: "Dondurma", price: 10.0, date: DateTime.now()),
    Expense(name: "Güneş Gözlüğü", price: 50.0, date: DateTime.now()),
    Expense(name: "Bilgisayar Oyunu", price: 80.0, date: DateTime.now()),
    Expense(name: "Bahçe Malzemeleri", price: 120.0, date: DateTime.now()),
    Expense(name: "Diyet Yemek Paketi", price: 70.0, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: AppBar(
          backgroundColor: Colors.grey,
          title: const Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Text("ExpenseApp"),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
              child: Icon(Icons.add),
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            color: Colors.white,
            child: ListTile(
              contentPadding: const EdgeInsets.all(5),
              title: Text(expenses[index].name),
              subtitle: Text("${expenses[index].price} ₺"),
              trailing: Text(_getCurrentDateTime()),
              leading: const Icon(Icons.shopify_outlined),
            ),
          );
        },
      ),
    );
  }

  String _getCurrentDateTime() {
    DateTime now = DateTime.now();
    return DateFormat('dd.MM.yyyy HH:mm').format(now);
  }
}
